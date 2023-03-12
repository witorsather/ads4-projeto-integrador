import { BoxEnderecamentoModel } from './BoxEnderecamentoModel';
import { EstanteEnderecamentoModel } from './EstanteEnderecamentoModel';

export class PrateleiraEnderecamentoModel {
  id_prateleira: number;
  desc_prateleira: string;
  id_estante: number;
  box: BoxEnderecamentoModel;
  estante: EstanteEnderecamentoModel;

  constructor(
    id_prateleira: number,
    desc_prateleira: string,
    id_estante: number,
    box: BoxEnderecamentoModel,
    estante: EstanteEnderecamentoModel
  ) {
    this.id_prateleira = id_prateleira;
    this.desc_prateleira = desc_prateleira;
    this.id_estante = id_estante;
    this.box = box;
    this.estante = estante;
  }
}
