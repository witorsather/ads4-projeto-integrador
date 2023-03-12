package com.develop.gpp.domain.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class ItemSolicitacaoCriacaoAstecaModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idItemPedidoSaida;
    
    private int quantidade;
    
    private double valor;
    
    private String peca;
    
    private int separado;
    
    private String separador;
    
    private Date dataSeparacao;
    
    private String motivoTrocaPeca;
    
    private boolean pendenciaItem;
    
    private String endereco;
    
    private double saldo_disponivel;
    
    private String pecaEstoque;
    
    // Add getters and setters
}
