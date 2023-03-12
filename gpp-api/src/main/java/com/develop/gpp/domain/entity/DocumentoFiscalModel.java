// package com.develop.gpp.domain.entity;

// import java.time.LocalDateTime;

// import jakarta.persistence.Column;
// import jakarta.persistence.Entity;
// import jakarta.persistence.GeneratedValue;
// import jakarta.persistence.GenerationType;
// import jakarta.persistence.Id;
// import jakarta.persistence.JoinColumn;
// import jakarta.persistence.ManyToOne;
// import jakarta.persistence.OneToOne;
// import jakarta.persistence.Table;
// import lombok.Getter;
// import lombok.Setter;

// @Getter
// @Setter
// //@Entity
// //@Table(name = "documento_fiscal")
// public class DocumentoFiscalModel {
//   @Id
//   @GeneratedValue(strategy = GenerationType.IDENTITY)
//   @Column(name = "id_documento_fiscal")
//   private long idDocumentoFiscal;

//   @Column(name = "id_filial_saida")
//   private long idFilialSaida;

//   @Column(name = "nome")
//   private String nome;

//   @Column(name = "cpf_cnpj")
//   private String cpfCnpj;

//   @Column(name = "num_doc_fiscal")
//   private long numDocFiscal;

//   @Column(name = "serie_doc_fiscal")
//   private String serieDocFiscal;

//   @Column(name = "data_emissao")
//   private LocalDateTime dataEmissao;

//   @OneToOne
//   @JoinColumn(name = "id_item_doc_fiscal")
//   private ItemDocumentoFiscalModel ItemDocumentoFiscal;

//   @ManyToOne
//   @JoinColumn(name = "id_cliente")
//   private ClienteModel cliente;

//   @ManyToOne
//   @JoinColumn(name = "id_cliente_filial")
//   private ClienteFilialModel clienteFilial;

//   @Column(name = "descricao")
//   private String descricao;

//   @Column(name = "fornecedor")
//   private String fornecedor;

//   // Constructors, getters, and setters omitted for brevity
// }
