import { Injectable } from '@angular/core';
import { Produto } from './models/produto';

@Injectable({
  providedIn: 'root'
})
export class ProdutoService {

  public produtos: Produto[] = [];

  constructor() { }

  public add(produto: Produto){
    this.produtos.push(produto);
  }

  public get(idx: number): Produto{
    return this.produtos[idx];
  }

  public list(): Produto[]{
    let idx = 0;
    for(let c of this.produtos){
      c.id = idx;
      idx++;
    }
    return this.produtos;
  }

}
