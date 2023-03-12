package com.develop.authentication_api.filter;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.SpringBootConfiguration;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.HttpClientErrorException.Unauthorized;
import org.springframework.web.filter.OncePerRequestFilter;

import com.develop.authentication_api.domain.service.TokenService;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;

//Anotação que faz a classe ser inicializada junto com o spring sobrescrevendo a que foi herdada
@SpringBootConfiguration
@RequiredArgsConstructor
public class CustomAuthenticationFilter extends OncePerRequestFilter {

    private final TokenService service;

    //Metodo que intercepta cada requisição que o spring recebe
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        if (request.getServletPath().equals("/register") || request.getServletPath().equals("/login")) {
            // Seguir o fluxo padrao do spring Controller>Service>Repository
            filterChain.doFilter(request, response);
        } else {
            try {
                String token = request.getHeader("Token");
                service.validateToken(token);
            } catch (Exception e) {
                // Setando o erro pra retorno da requisição
                response.setStatus(HttpStatus.UNAUTHORIZED.value());

                // Criando um body com erro pra retorno
                Map<String, String> error = new HashMap<>();
                error.put("message", e.getMessage());

                // Setando o tipo de retorno pra resposta
                response.setContentType(MediaType.APPLICATION_JSON_VALUE);

                //Retornando o objeto com erro
                new ObjectMapper().writeValue(response.getOutputStream(), error);
            }
            // Seguir o fluxo padrao do spring Controller>Service>Repository
            filterChain.doFilter(request, response);
        }
    }
}
