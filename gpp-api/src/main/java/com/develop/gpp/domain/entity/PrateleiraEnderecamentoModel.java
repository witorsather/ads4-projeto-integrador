// package com.develop.gpp.domain.entity;

// import jakarta.persistence.Column;
// import jakarta.persistence.Entity;
// import jakarta.persistence.FetchType;
// import jakarta.persistence.GeneratedValue;
// import jakarta.persistence.GenerationType;
// import jakarta.persistence.Id;
// import jakarta.persistence.JoinColumn;
// import jakarta.persistence.ManyToOne;
// import jakarta.persistence.Table;
// import lombok.Getter;
// import lombok.Setter;

// @Getter
// @Setter
// //@Entity
// //@Table(name = "prateleira_enderecamento")
// public class PrateleiraEnderecamentoModel {

//   @Id
//   @GeneratedValue(strategy = GenerationType.IDENTITY)
//   private Long id_prateleira;

//   @Column(name = "desc_prateleira")
//   private String desc_prateleira;

//   @ManyToOne(fetch = FetchType.LAZY)
//   @JoinColumn(name = "id_estante")
//   private EstanteEnderecamentoModel estante;

//   @ManyToOne(fetch = FetchType.LAZY)
//   @JoinColumn(name = "id_box")
//   private BoxEnderecamentoModel box;

//   public PrateleiraEnderecamentoModel() {}

//   public PrateleiraEnderecamentoModel(String desc_prateleira, EstanteEnderecamentoModel estante, BoxEnderecamentoModel box) {
//     this.desc_prateleira = desc_prateleira;
//     this.estante = estante;
//     this.box = box;
//   }

//   // Getters and setters
//   // ...
// }
