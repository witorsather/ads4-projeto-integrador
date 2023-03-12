package com.develop.gpp.domain.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
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
@Table(name = "filial")
public class FilialModel {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_filial")
    private Long idFilial;
    
    @Column(name = "sigla")
    private String sigla;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_cliente_filial")
    private ClienteFilialModel clienteFilial;

    public FilialModel() {
        super();
    }

    public FilialModel(Long idFilial, String sigla, ClienteFilialModel clienteFilial) {
        super();
        this.idFilial = idFilial;
        this.sigla = sigla;
        this.clienteFilial = clienteFilial;
    }

}
