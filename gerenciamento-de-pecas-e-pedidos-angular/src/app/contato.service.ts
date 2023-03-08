import { Injectable } from '@angular/core';
import { Contato } from './models/contato';

@Injectable({
  providedIn: 'root'
})
export class ContatoService {

  public contatos: Contato[] = [];

  constructor() { }

  public add(contato: Contato){
    this.contatos.push(contato);
  }

  public get(idx: number): Contato{
    return this.contatos[idx];
  }

  public list(): Contato[]{
    let idx = 0;
    for(let c of this.contatos){
      c.id = idx;
      idx++;
    }
    return this.contatos;
  }

}
