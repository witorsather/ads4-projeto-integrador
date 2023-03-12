package com.develop.gpp.domain.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;

@Entity
public class ItemPedidosaidaModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idItemPedidoSaida;
    
    private int quantidade;
    
    @OneToOne
    private PecaModel peca;
    
    private int separado;
    
    @OneToOne
    private FuncionarioModel separador;
    
    private Date dataSeparacao;
    
    @OneToOne
    private AstecaMotivoModel motivoTrocaPeca;
    
    private boolean pendenciaItem;
    
    private String endereco;
    
    private int saldo_disponivel;
    
    @OneToOne
    private PecasEstoqueModel pecaEstoque;
    
    // Add getters and setters
}
