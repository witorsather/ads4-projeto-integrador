import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LocalDataSource } from 'ng2-smart-table';
import { PecaService } from '../peca.service';
import { Peca } from '../models/PecaModel';

@Component({
  selector: 'app-peca-list',
  templateUrl: './peca-list.component.html',
  styleUrls: ['./peca-list.component.css']
})
export class PecaListComponent implements OnInit{

  public source: LocalDataSource = new LocalDataSource();

  settings = {
    actions: {
      add: false,
      edit: false,
      delete: false,
      custom: [{ name: 'edit', title: 'Editar' }],
      position: 'right'
    },
    add: false,
    hideHeader: false,
    hideSubHeader: false,
    columns: {
      id_peca: {
        title: 'id_peca',
        type: 'string',
      },
      numero: {
        title: 'numero',
        type: 'string',
      },
      codigo_fabrica: {
        title: 'codigo_fabrica',
        type: 'string',
      },
      unidade: {
        title: 'unidade',
        type: 'string',
      },
      descricao: {
        title: 'descricao',
        type: 'string',
      },
      altura: {
        title: 'altura',
        type: 'string',
      },
      largura: {
        title: 'largura',
        type: 'string',
      },
      profundidade: {
        title: 'profundidade',
        type: 'string',
      },
      unidade_medida: {
        title: 'unidade_medida',
        type: 'string',
      },
      volumes: {
        title: 'volumes',
        type: 'string',
      },
      active: {
        title: 'active',
        type: 'string',
      },
      custo: {
        title: 'custo',
        type: 'string',
      },
      classificacao_custo: {
        title: 'classificacao_custo',
        type: 'string',
      },
      tipo_classificacao_custo: {
        title: 'tipo_classificacao_custo',
        type: 'string',
      },
      id_peca_especie: {
        title: 'id_peca_especie',
        type: 'string',
      },
      id_peca_material_fabricacao: {
        title: 'id_peca_material_fabricacao',
        type: 'string',
      },
      id_peca_cor: {
        title: 'id_peca_cor',
        type: 'string',
      },
      estoque: {
        title: 'estoque',
        type: 'string',
      },
      estoqueUnico: {
        title: 'estoqueUnico',
        type: 'string',
      },
      peca: {
        title: 'peca',
        type: 'string',
      },
      cor: {
        title: 'cor',
        type: 'string',
      },
      material: {
        title: 'material',
        type: 'string',
      },
      id_fornecedor: {
        title: 'id_fornecedor',
        type: 'string',
      },
      pecasCorModel: {
        title: 'pecasCorModel',
        type: 'string',
      },
      material_fabricacao: {
        title: 'material_fabricacao',
        type: 'string',
      },
      pecasMaterialModel: {
        title: 'pecasMaterialModel',
        type: 'string',
      },
      especie: {
        title: 'especie',
        type: 'string',
      },
      pecasEspecieModel: {
        title: 'pecasEspecieModel',
        type: 'string',
      },
      pecaPeca: {
        title: 'pecaPeca',
        type: 'string',
      },
    },
  };  

  constructor(private pecaService: PecaService, private router: Router){}

  ngOnInit(): void {
    this.source.load(this.pecaService.list());
  }

  novo(){
    this.router.navigateByUrl('/peca/novo');
  }

  onCustomAction(event: any) {
    let peca:Peca = event.data;
    console.log(event);
    this.router.navigate([`peca/${peca.id_peca}`]);
  }  

}
