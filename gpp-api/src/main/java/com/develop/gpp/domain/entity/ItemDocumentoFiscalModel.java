package com.develop.gpp.domain.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class ItemDocumentoFiscalModel {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long idLd;

  private Long idItemDocFiscal;

  private Long numDocFiscal;

  private String denominacaoProduto;

  private Long idDocumentoFiscal;

  private Long qtde;

  private Double valorVenda;

  private Double custoAdm;

  // Default constructor
  public ItemDocumentoFiscalModel() {}

  // Parameterized constructor
  public ItemDocumentoFiscalModel(Long idItemDocFiscal, Long numDocFiscal, String denominacaoProduto, Long idDocumentoFiscal, Long qtde, Double valorVenda, Double custoAdm) {
    this.idItemDocFiscal = idItemDocFiscal;
    this.numDocFiscal = numDocFiscal;
    this.denominacaoProduto = denominacaoProduto;
    this.idDocumentoFiscal = idDocumentoFiscal;
    this.qtde = qtde;
    this.valorVenda = valorVenda;
    this.custoAdm = custoAdm;
  }

}
