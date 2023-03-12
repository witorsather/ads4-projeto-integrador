package com.develop.gpp.domain.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class ClienteModel {
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private int idCliente;
  private String nome;
  private String cpfCnpj;
  private String email;
  private String endereco;

  public ClienteModel(int idCliente, String nome, String cpfCnpj, String email, String endereco) {
    this.idCliente = idCliente;
    this.nome = nome;
    this.cpfCnpj = cpfCnpj;
    this.email = email;
    this.endereco = endereco;
  }

}
