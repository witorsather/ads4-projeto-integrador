import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { LocalDataSource } from 'ng2-smart-table';
import { ContatoService } from '../contato.service';
import { Contato } from '../models/contato';

@Component({
  selector: 'app-contato',
  templateUrl: './contato.component.html',
  styleUrls: ['./contato.component.css']
})
export class ContatoComponent implements OnInit{

  public contato:Contato = new Contato();

  public fornecedor: boolean = false;

  


  constructor(private contatoService: ContatoService, private router: Router, private route: ActivatedRoute){}

  ngOnInit(): void {
    this.route.params.subscribe(params => {
      let id = params['id'];
      if(id !== 'novo'){
        this.contato = this.contatoService.get(id);        
      }
      console.log(id);
    });
  }

  salvar(){
    this.contatoService.add(this.contato);
    this.contato = new Contato();
    console.log(`funcionou. Nome: `);
    this.router.navigateByUrl('/contatoList');
  }


}
