package com.develop.authentication_api.domain.service;

import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import com.develop.authentication_api.domain.entity.Account;
import com.develop.authentication_api.domain.entity.dto.LoginDTO;
import com.develop.authentication_api.domain.repository.AccountRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AccountService {
    
    private final AccountRepository repository;

    public Account register(Account account) {
        existsByUsername(account.getUsername());
        return repository.save(account);
    }

    public Account getByLogin(LoginDTO dto) {
        Optional<Account> acc = repository.findByUsernameAndPassword(dto.getUsername(), dto.getPassword());
        if (acc.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid username or password");
        }
        return acc.get();
    }


    private void existsByUsername(String username) {
        if (repository.findByUsername(username).isPresent()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Username already registered!");
        }
    }
}
