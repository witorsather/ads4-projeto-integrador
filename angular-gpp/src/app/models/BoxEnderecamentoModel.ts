import { PrateleiraEnderecamentoModel } from './PrateleiraEnderecamentoModel';
import { PecasEstoqueModel } from './PecasEstoqueModel';

export class BoxEnderecamentoModeI {
  id_box: number;
  desc_box: string;
  id_prateleira: number;
  altura: number;
  largura: number;
  profundidade: number;
  unidade_medida: number;
  created_at: string;
  prateleira: PrateleiraEnderecamentoModel;
  endereco: string;
  pecaEstoque: PecasEstoqueModel;

  constructor(
    id_box: number,
    desc_box: string,
    id_prateleira: number,
    altura: number,
    largura: number,
    profundidade: number,
    unidade_medida: number,
    created_at: string,
    prateleira: PrateleiraEnderecamentoModel,
    endereco: string,
    pecaEstoque: PecasEstoqueModel
  ) {
    this.id_box = id_box;
    this.desc_box = desc_box;
    this.id_prateleira = id_prateleira;
    this.altura = altura;
    this.largura = largura;
    this.profundidade = profundidade;
    this.unidade_medida = unidade_medida;
    this.created_at = created_at;
    this.prateleira = prateleira;
    this.endereco = endereco;
    this.pecaEstoque = pecaEstoque;
  }
}
