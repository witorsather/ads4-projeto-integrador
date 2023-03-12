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
public class ProdutoPecaModel {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long idProdutoPeca;

  private int quantidadePorProduto;

  // @ManyToOne
  // @JoinColumn(name = "id_peca")
  // private Peca peca;

  // @ManyToOne
  // @JoinColumn(name = "id_produto")
  // private Produto produto;

  private int status;

  private int situacao;

  // getters and setters
}
