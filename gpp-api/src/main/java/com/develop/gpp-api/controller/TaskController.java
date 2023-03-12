package com.develop.authentication_api.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.develop.authentication_api.domain.entity.Task;
import com.develop.authentication_api.domain.entity.dto.TaskDTO;
import com.develop.authentication_api.domain.service.TaskService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.websocket.server.PathParam;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("task")
@RequiredArgsConstructor
public class TaskController {
    
    private final TaskService service;

    @GetMapping
    public List<Task> findAll(HttpServletRequest request) {
        return service.findAll(request);
    }

    @PostMapping
    public Task save(HttpServletRequest request, @RequestBody TaskDTO dto) {
        return service.save(request, dto);
    }

    @PutMapping("{id}")
    public Task updateStatus(HttpServletRequest request, @PathVariable Long id) {
        return service.updateTask(request, id);
    }
}
