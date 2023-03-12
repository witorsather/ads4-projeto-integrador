// package com.develop.gpp.domain.entity;

// import jakarta.persistence.Entity;
// import jakarta.persistence.GeneratedValue;
// import jakarta.persistence.GenerationType;
// import jakarta.persistence.Id;
// import lombok.Getter;
// import lombok.Setter;

// @Getter
// @Setter
// //@Entity
// public class BoxEnderecamentoModel {
//     @Id
//     @GeneratedValue(strategy = GenerationType.AUTO)
//     private int idBox;
//     private String descBox;
//     private int idPrateleira;
//     private double altura;
//     private double largura;
//     private double profundidade;
//     private int unidadeMedida;
//     private String createdAt;
//     private PrateleiraEnderecamentoModel prateleira;
//     private String endereco;
//     private PecasEstoqueModel pecaEstoque;

//     // Constructor
//     public BoxEnderecamentoModel(int idBox, String descBox, int idPrateleira, double altura, double largura,
//             double profundidade, int unidadeMedida, String createdAt, PrateleiraEnderecamentoModel prateleira,
//             String endereco, PecasEstoqueModel pecaEstoque) {
//         this.idBox = idBox;
//         this.descBox = descBox;
//         this.idPrateleira = idPrateleira;
//         this.altura = altura;
//         this.largura = largura;
//         this.profundidade = profundidade;
//         this.unidadeMedida = unidadeMedida;
//         this.createdAt = createdAt;
//         this.prateleira = prateleira;
//         this.endereco = endereco;
//         this.pecaEstoque = pecaEstoque;
//     }

// }
