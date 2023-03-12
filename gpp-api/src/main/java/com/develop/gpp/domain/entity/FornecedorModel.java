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
@Table(name = "fornecedor")
public class FornecedorModel {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long idFornecedor;

  @OneToOne
  @JoinColumn(name = "id_cliente")
  private ClienteModel cliente;

}
