package com.develop.authentication_api.domain.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import com.develop.authentication_api.domain.entity.Task;
import com.develop.authentication_api.domain.entity.Token;
import com.develop.authentication_api.domain.entity.dto.TaskDTO;
import com.develop.authentication_api.domain.repository.TaskRepository;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class TaskService {

    private final TaskRepository repository;

    private final TokenService tokenService;

    public List<Task> findAll(HttpServletRequest request) {
        // Buscando um token com base em um header da requisição
        Token token = tokenService.validateToken(request.getHeader("Token"));
        return repository.findAllByUsername(token.getUsername());
    }

    public Task save(HttpServletRequest request, TaskDTO dto) {
        // Buscando um token com base em um header da requisição
        Token token = tokenService.validateToken(request.getHeader("Token"));
        Task task = new Task();

        //BeanUtils utilizando para copiar propriedades com o mesmo nome para um objeto
        BeanUtils.copyProperties(dto, task);
        
        task.setUsername(token.getUsername());
        task.setDone(false);
        return repository.save(task);
    }

    public Task updateTask(HttpServletRequest request, Long id) {
        // Buscando um token com base em um header da requisição
        Token token = tokenService.validateToken(request.getHeader("Token"));
        
        Optional<Task> task = repository.findByIdAndUsername(id, token.getUsername());
        if (task.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Task not found!");
        }
        task.get().updateStatus();
        return repository.save(task.get());
    }
    

}
