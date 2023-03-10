import { Injectable } from '@angular/core';
import { Peca } from './models/PecaModel';

@Injectable({
  providedIn: 'root'
})
export class PecaService {

  public pecas: Peca[] = [];

  constructor() { }

  public add(peca: Peca){
    this.pecas.push(peca);
  }

  public get(idx: number): Peca{
    return this.pecas[idx];
  }

  public list(): Peca[]{
    let idx = 0;
    for(let c of this.pecas){
      c.id_peca = idx;
      idx++;
    }
    return this.pecas;
  }

}
