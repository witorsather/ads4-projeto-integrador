import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { LocalDataSource } from 'ng2-smart-table';
import { PecaService } from '../peca.service';
import { Peca } from '../models/PecaModel';

@Component({
  selector: 'app-peca',
  templateUrl: './peca.component.html',
  styleUrls: ['./peca.component.css']
})
export class PecaComponent implements OnInit{

  public peca:Peca = new Peca();

  public fornecedor: boolean = false;

  


  constructor(private pecaService: PecaService, private router: Router, private route: ActivatedRoute){}

  ngOnInit(): void {
    this.route.params.subscribe(params => {
      let id = params['id'];
      if(id !== 'novo'){
        this.peca = this.pecaService.get(id);        
      }
      console.log(id);
    });
  }

  salvar(){
    this.pecaService.add(this.peca);
    this.peca = new Peca();
    console.log(`funcionou. Nome: `);
    this.router.navigateByUrl('/pecaList');
  }


}
