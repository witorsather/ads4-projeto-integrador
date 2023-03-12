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
public class EstanteEnderecamentoModel {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
        private int id_estante;
        private String desc_estante;
        private int id_corredor;
        private int id_prateleira;
        private PrateleiraEnderecamentoModel prateleira;
        private CorredorEnderecamentoModel corredor;
      
        public EstanteEnderecamentoModel(int id_estante, String desc_estante, int id_corredor, int id_prateleira, PrateleiraEnderecamentoModel prateleira, CorredorEnderecamentoModel corredor) {
            this.id_estante = id_estante;
            this.desc_estante = desc_estante;
            this.id_corredor = id_corredor;
            this.id_prateleira = id_prateleira;
            this.prateleira = prateleira;
            this.corredor = corredor;
        }
      
        public int getId_estante() {
            return id_estante;
        }
      
        public void setId_estante(int id_estante) {
            this.id_estante = id_estante;
        }
      
        public String getDesc_estante() {
            return desc_estante;
        }
      
        public void setDesc_estante(String desc_estante) {
            this.desc_estante = desc_estante;
        }
      
        public int getId_corredor() {
            return id_corredor;
        }
      
        public void setId_corredor(int id_corredor) {
            this.id_corredor = id_corredor;
        }
      
        public int getId_prateleira() {
            return id_prateleira;
        }
      
        public void setId_prateleira(int id_prateleira) {
            this.id_prateleira = id_prateleira;
        }
      
        public PrateleiraEnderecamentoModel getPrateleira() {
            return prateleira;
        }
      
        public void setPrateleira(PrateleiraEnderecamentoModel prateleira) {
            this.prateleira = prateleira;
        }
      
        public CorredorEnderecamentoModel getCorredor() {
            return corredor;
        }
      
        public void setCorredor(CorredorEnderecamentoModel corredor) {
            this.corredor = corredor;
        }
    }
    