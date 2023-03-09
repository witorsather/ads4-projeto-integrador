import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LocalDataSource } from 'ng2-smart-table';
import { PecaService } from '../peca.service';
import { Peca } from '../models/peca';

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
      nome: {
        title: 'Nome',
        type: 'string',
      },
      telefone: {
        title: 'Telefone',
        type: 'string',
      },
      endereco: {
        title: 'Endereço',
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
    this.router.navigate([`peca/${peca.id}`]);
  }  

}
