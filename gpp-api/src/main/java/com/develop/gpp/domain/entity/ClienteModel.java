package com.develop.gpp.domain.entity;

import java.util.List;

import org.hibernate.annotations.ManyToAny;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "cliente")
public class ClienteModel {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private int idCliente;

  private String nome;

  private String cpfCnpj;

  private String email;

  @OneToMany(mappedBy = "cliente")
  private List<EndClienteModel> enderecos;
  
  @OneToOne(mappedBy = "cliente")
  private ClienteFilialModel clienteFilial;



}
