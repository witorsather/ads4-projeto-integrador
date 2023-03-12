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
// //@Table(name = "piso_enderecamento")
// public class PisoEnderecamentoModel {

//   @Id
//   @GeneratedValue(strategy = GenerationType.IDENTITY)
//   @Column(name = "id_piso")
//   private Long idPiso;

//   @Column(name = "desc_piso")
//   private String descPiso;

//   @Column(name = "id_filial")
//   private Long idFilial;

//   @ManyToOne(fetch = FetchType.LAZY)
//   @JoinColumn(name = "id_corredor")
//   private CorredorEnderecamentoModel corredor;

//   // Constructors, getters and setters
// }

