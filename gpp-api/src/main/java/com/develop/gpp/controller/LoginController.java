package com.develop.gpp.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.develop.gpp.domain.entity.Token;
import com.develop.gpp.domain.entity.dto.LoginDTO;
import com.develop.gpp.domain.service.TokenService;

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
