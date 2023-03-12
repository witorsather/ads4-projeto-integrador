package com.develop.gpp.domain.entity;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "pedido_entrada")
public class PedidoEntradaModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idPedidoEntrada;

    @Column(nullable = false)
    private String asteca;

    @Column(nullable = false)
    private Date dataEmissao;

    @Column(nullable = false)
    private Integer situacao;

    @Column(nullable = false)
    private Double valorTotal;

    @Column(nullable = false)
    private Long id_movimento_entrada;

    @ElementCollection
    private List<String> itensPedidoEntrada;

    @Column(nullable = false)
    private String funcionario;

    @Column(nullable = false)
    private Integer filial_registro;

    @Column(nullable = false)
    private String clienteFilial;

    @Column(nullable = false)
    private Long idFornecedor;

    // getters and setters
}
