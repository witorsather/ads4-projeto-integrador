import { Injectable } from '@angular/core';
import { PecaModel } from './models/PecaModel';

@Injectable({
  providedIn: 'root'
})
export class PecaService {

  public pecas: PecaModel[] = [];

  constructor() { }

  public add(peca: PecaModel){
    this.pecas.push(peca);
  }

  public get(idx: number): PecaModel{
    return this.pecas[idx];
  }

  public list(): PecaModel[]{
    let idx = 0;
    for(let c of this.pecas){
      c.id_peca = idx;
      idx++;
    }
    return this.pecas;
  }

}
