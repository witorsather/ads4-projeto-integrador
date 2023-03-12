package com.develop.gpp.domain.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
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
    
        public EndClienteModel(Long idEndereco, String cep, String logradouro, String numero, String bairro,
                String localidade, String uf, String complemento) {
            this.idEndereco = idEndereco;
            this.cep = cep;
            this.logradouro = logradouro;
            this.numero = numero;
            this.bairro = bairro;
            this.localidade = localidade;
            this.uf = uf;
            this.complemento = complemento;
        }
    
        public Long getIdEndereco() {
            return idEndereco;
        }
    
        public void setIdEndereco(Long idEndereco) {
            this.idEndereco = idEndereco;
        }
    
        public String getCep() {
            return cep;
        }
    
        public void setCep(String cep) {
            this.cep = cep;
        }
    
        public String getLogradouro() {
            return logradouro;
        }
    
        public void setLogradouro(String logradouro) {
            this.logradouro = logradouro;
        }
    
        public String getNumero() {
            return numero;
        }
    
        public void setNumero(String numero) {
            this.numero = numero;
        }
    
        public String getBairro() {
            return bairro;
        }
    
        public void setBairro(String bairro) {
            this.bairro = bairro;
        }
    
        public String getLocalidade() {
            return localidade;
        }
    
        public void setLocalidade(String localidade) {
            this.localidade = localidade;
        }
    
        public String getUf() {
            return uf;
        }
    
        public void setUf(String uf) {
            this.uf = uf;
        }
    
        public String getComplemento() {
            return complemento;
        }
    
        public void setComplemento(String complemento) {
            this.complemento = complemento;
        }
    }
    