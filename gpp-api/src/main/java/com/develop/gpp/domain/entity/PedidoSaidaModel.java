package com.develop.gpp.domain.entity;

import java.sql.Date;

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
@Table(name = "pedido_saida")
public class PedidoSaidaModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_pedido_saida")
    private Long idPedidoSaida;

    @Column(name = "cpf_cnpj")
    private String cpfCnpj;

    @Column(name = "filial_registro")
    private Long filialRegistro;

    @Column(name = "num_doc_fiscal")
    private Long numDocFiscal;

    @Column(name = "serie_doc_fiscal")
    private String serieDocFiscal;

    @Column(name = "data_emissao")
    private Date dataEmissao;

    @Column(name = "situacao")
    private Integer situacao;

    @Column(name = "valor_total")
    private Double valorTotal;

    @Column(name = "verifica_estoque")
    private Boolean verificaEstoque;

    // @ManyToOne
    // @JoinColumn(name = "id_cliente_filial")
    // private ClienteFilial clienteFilial;

    // @ManyToOne
    // @JoinColumn(name = "id_asteca")
    // private Asteca asteca;

    // @ManyToOne
    // @JoinColumn(name = "id_funcionario")
    // private Funcionario funcionario;

    // @ManyToOne
    // @JoinColumn(name = "id_cliente")
    // private Cliente cliente;

    // @OneToMany(mappedBy = "pedidoSaida")
    // private List<ItemPedidoSaida> itemsPedidoSaida;

    // @OneToMany(mappedBy = "pedidoSaida")
    // private List<PedidoSaidaEvento> pedidoSaidaEvento;

    // Getters and setters
}
