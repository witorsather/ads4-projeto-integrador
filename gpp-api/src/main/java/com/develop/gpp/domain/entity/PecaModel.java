// package com.develop.gpp.domain.entity;

// import java.util.List;

// import jakarta.persistence.CascadeType;
// import jakarta.persistence.Column;
// import jakarta.persistence.Entity;
// import jakarta.persistence.GeneratedValue;
// import jakarta.persistence.GenerationType;
// import jakarta.persistence.Id;
// import jakarta.persistence.OneToMany;
// import jakarta.persistence.Table;

// //@Entity
// //@Table(name = "peca")
// public class PecaModel {

//     @Id
//     @GeneratedValue(strategy = GenerationType.IDENTITY)
//     private Long id_peca;

//     @Column(nullable = false)
//     private String numero;

//     @Column(nullable = false)
//     private String codigo_fabrica;

//     @Column(nullable = false)
//     private Integer unidade;

//     @Column(nullable = false)
//     private String descricao;

//     @Column(nullable = false)
//     private Integer altura;

//     @Column(nullable = false)
//     private Integer largura;

//     @Column(nullable = false)
//     private Integer profundidade;

//     @Column(nullable = false)
//     private Integer unidade_medida;

//     @Column(nullable = false)
//     private String volumes;

//     @Column(nullable = false)
//     private Boolean active;

//     @Column(nullable = false)
//     private Double custo;

//     @Column(nullable = false)
//     private Integer classificacao_custo;

//     @Column(nullable = false)
//     private Integer tipo_classificacao_custo;

//     // @ManyToOne(fetch = FetchType.LAZY)
//     // @JoinColumn(name = "id_peca_especie", referencedColumnName = "id_peca_especie", insertable = false, updatable = false)
//     // private PecasEspecie pecasEspecie;

//     // @ManyToOne(fetch = FetchType.LAZY)
//     // @JoinColumn(name = "id_peca_material_fabricacao", referencedColumnName = "id_peca_material_fabricacao", insertable = false, updatable = false)
//     // private PecasMaterial pecasMaterial;

//     // @ManyToOne(fetch = FetchType.LAZY)
//     // @JoinColumn(name = "id_peca_cor", referencedColumnName = "id_peca_cor", insertable = false, updatable = false)
//     // private PecasCor pecasCor;

//     @Column(nullable = false)
//     private String estoque;

//     @Column(nullable = false)
//     private String estoqueUnico;

//     @Column(nullable = false)
//     private String peca;

//     @Column(nullable = false)
//     private String cor;

//     @Column(nullable = false)
//     private String material;

//     @Column(nullable = false)
//     private Long id_fornecedor;

//     // @OneToMany(mappedBy = "peca", cascade = CascadeType.ALL)
//     // private List<PecasCor> pecasCorModel;

//     @Column(nullable = false)
//     private String material_fabricacao;

//     // @OneToMany(mappedBy = "peca", cascade = CascadeType.ALL)
//     // private List<PecasMaterial> pecasMaterialModel;

//     @Column(nullable = false)
//     private String especie;

//     // @OneToMany(mappedBy = "peca", cascade = CascadeType.ALL)
//     // private List<PecasEspecieModel> pecasEspecieModel;

//     @OneToMany(mappedBy = "peca", cascade = CascadeType.ALL)
//     private List<ProdutoPecaModel> produtoPecaModel;

// }