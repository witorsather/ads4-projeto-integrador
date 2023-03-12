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
public class ClienteFilialModel {
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private int idCliente;
  private int idFilial;
  private ClienteModel cliente;

  public ClienteFilialModel(int idCliente, int idFilial, ClienteModel cliente) {
    this.idCliente = idCliente;
    this.idFilial = idFilial;
    this.cliente = cliente;
  }

}
