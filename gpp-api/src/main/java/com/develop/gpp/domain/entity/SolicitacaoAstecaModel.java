package com.develop.gpp.domain.entity;
import java.util.Date;
import java.util.List;

import jakarta.persistence.CollectionTable;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "solicitacao_asteca")
public class SolicitacaoAstecaModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_asteca")
    private Long idAsteca;

    @Column(name = "asteca_motivo")
    private String astecaMotivo;

    @Column(name = "tipo_asteca")
    private Integer tipoAsteca;

    @Column(name = "id_filial_registro")
    private Long idFilialRegistro;

    @Column(name = "observacao")
    private String observacao;

    @Column(name = "defeito_estado_prod")
    private String defeitoEstadoProd;

    @Column(name = "data_emissao")
    @Temporal(TemporalType.DATE)
    private Date dataEmissao;

    @Column(name = "asteca_end_cliente")
    private String astecaEndCliente;

    @Column(name = "documento_fiscal")
    private String documentoFiscal;

    @ElementCollection
    @CollectionTable(name = "comp_est_prod", joinColumns = @JoinColumn(name = "id_asteca"))
    @Column(name = "comp_est_prod")
    private List<String> compEstProd;

    @Column(name = "funcionario")
    private String funcionario;

    @Column(name = "pedido_saida")
    private String pedidoSaida;

    @Column(name = "pedido_entrada")
    private String pedidoEntrada;

    @ElementCollection
    @CollectionTable(name = "asteca_pendencias", joinColumns = @JoinColumn(name = "id_asteca"))
    @Column(name = "asteca_pendencias")
    private List<String> astecaPendencias;

    // getters and setters
}
