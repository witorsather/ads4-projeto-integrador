package com.develop.gpp.domain.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "usuario")
public class UsuarioModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long uid;

    private String nome;

    private String email;

    @Column(name = "idfilial")
    private Long idFilial;

    private String accessToken;

    private String tokenType;

    @Column(name = "email_verified_at")
    private LocalDateTime emailVerifiedAt;

    private String password;

    @Column(name = "remember_token")
    private String rememberToken;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    private Boolean active;

    private String iddepto;

    private String foto;

    @ManyToOne
    @JoinColumn(name = "iddepto", referencedColumnName = "iddepto", insertable = false, updatable = false)
    private DepartamentoModel departamento;

    // @OneToOne(mappedBy = "usuario")
    // private PefllUsuarioModel petfllUsuario;



    // Getters and Setters
    // ...
}
