package com.develop.authentication_api.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.develop.authentication_api.domain.entity.Token;
import com.develop.authentication_api.domain.entity.dto.LoginDTO;
import com.develop.authentication_api.domain.service.TokenService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class LoginController {
    
    private final TokenService tokenService;

    @PostMapping("login")
    public Token login(@RequestBody LoginDTO dto) {
        return tokenService.login(dto);
    }
}
