package com.develop.gpp.domain.entity;

import jakarta.persistence.Column;
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
@Table(name = "pecas_estoque")
public class PecasEstoqueModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_peca_estoque;

    @Column(nullable = false)
    private Integer filial;

    @Column(nullable = false)
    private Long id_peca;

    @Column(nullable = false)
    private Long id_box;

    @Column(nullable = false)
    private Integer saldo_disponivel;

    @Column(nullable = false)
    private Integer saldo_reservado;

    @Column(nullable = false)
    private Integer quantidade_transferencia;

    @Column(nullable = false)
    private Integer quantidade_minima;

    // @ManyToOne(fetch = FetchType.LAZY)
    // @JoinColumn(name = "id_peca", referencedColumnName = "id_peca", insertable = false, updatable = false)
    // private Pecas peca;

    // @ManyToOne(fetch = FetchType.LAZY)
    // @JoinColumn(name = "id_box", referencedColumnName = "id_box", insertable = false, updatable = false)
    // private BoxEnderecamento box;

    @Column(nullable = false)
    private String fornecedor;

    @Column(nullable = false)
    private String endereco;

    // getters and setters
}
