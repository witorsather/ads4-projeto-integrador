package com.develop.gpp.domain.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "produto")
public class ProdutoModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idProduto;

    @Column(nullable = false)
    private String resumida;

    @Column(nullable = false)
    private Integer situacao;

    @ElementCollection
    private List<String> fornecedores;

    // @OneToMany(mappedBy = "produto", cascade = CascadeType.ALL, orphanRemoval = true)
    // private List<ProdutoPeca> produtoPecas;

    @Column(nullable = false)
    private Integer codFornecedor;

    // Constructors, getters and setters, and other methods
}
