package com.develop.authentication_api.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.develop.authentication_api.domain.entity.Account;
import com.develop.authentication_api.domain.service.AccountService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class AccountController {
    
    private final AccountService service;

    @PostMapping("register")
    public Account register(@RequestBody Account account) {
        return service.register(account);
    }
}
