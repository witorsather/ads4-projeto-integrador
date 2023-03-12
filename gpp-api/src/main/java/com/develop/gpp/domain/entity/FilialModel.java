package com.develop.gpp.domain.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
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

    // @OneToOne(mappedBy = "filial")
    // private ClienteFilialModel clienteFilial;

    public FilialModel() {
    }

    public FilialModel(Long idFilial, String sigla) {
        this.idFilial = idFilial;
        this.sigla = sigla;
        // this.clienteFilial = clienteFilial;
    }

}
