import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LocalDataSource } from 'ng2-smart-table';
import { ContatoService } from '../contato.service';
import { Contato } from '../models/contato';

@Component({
  selector: 'app-contato-list',
  templateUrl: './contato-list.component.html',
  styleUrls: ['./contato-list.component.css']
})
export class ContatoListComponent implements OnInit{

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

  constructor(private contatoService: ContatoService, private router: Router){}

  ngOnInit(): void {
    this.source.load(this.contatoService.list());
  }

  novo(){
    this.router.navigateByUrl('/contato/novo');
  }

  onCustomAction(event: any) {
    let contato:Contato = event.data;
    console.log(event);
    this.router.navigate([`contato/${contato.id}`]);
  }  

}
