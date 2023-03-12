package com.develop.gpp.domain.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "end_cliente")
public class EndClienteModel {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idEndereco;

    private String cep;

    private String logradouro;

    private String numero;

    private String bairro;

    private String localidade;

    private String uf;

    private String complemento;

    @ManyToOne
    @JoinColumn(name = "cliente_id")
    private ClienteModel cliente;

    public EndClienteModel() {
    }

    public EndClienteModel(Long idEndereco, String cep, String logradouro, String numero, String bairro,
            String localidade, String uf, String complemento, ClienteModel cliente) {
        this.idEndereco = idEndereco;
        this.cep = cep;
        this.logradouro = logradouro;
        this.numero = numero;
        this.bairro = bairro;
        this.localidade = localidade;
        this.uf = uf;
        this.complemento = complemento;
        this.cliente = cliente;
    }

}
