import { Injectable } from '@angular/core';
import { Peca } from './models/peca';

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
      c.id = idx;
      idx++;
    }
    return this.pecas;
  }

}
