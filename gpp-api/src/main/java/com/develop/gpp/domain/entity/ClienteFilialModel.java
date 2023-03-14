package com.develop.gpp.domain.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "cliente_filial")
public class ClienteFilialModel {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Integer idCliente;

  private int idFilial;

  @OneToOne
  @JoinColumn(name = "cliente_id")
  private ClienteModel cliente;

  @OneToOne
  @JoinColumn(name = "filial_id")
  private FilialModel filial;

  public ClienteFilialModel() {
  }

  public ClienteFilialModel(Integer idCliente, int idFilial, ClienteModel cliente, FilialModel filial) {
    this.idCliente = idCliente;
    this.idFilial = idFilial;
    this.cliente = cliente;
    this.filial = filial;
  }

}
