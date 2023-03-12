import { PrateleiraEnderecamentoModel } from './PrateleiraEnderecamentoModel';
import { CorredorEnderecamentoModel } from './CorredorEnderecamentoModel';

export class EstanteEnderecamentoModel {
  id_estante: number;
  desc_estante: string;
  id_corredor: number;
  id_prateleira: number;
  prateleira: PrateleiraEnderecamentoModel;
  corredor: CorredorEnderecamentoModel;

  constructor(
    id_estante: number,
    desc_estante: string,
    id_corredor: number,
    id_prateleira: number,
    prateleira: PrateleiraEnderecamentoModel,
    corredor: CorredorEnderecamentoModel
  ) {
    this.id_estante = id_estante;
    this.desc_estante = desc_estante;
    this.id_corredor = id_corredor;
    this.id_prateleira = id_prateleira;
    this.prateleira = prateleira;
    this.corredor = corredor;
  }
}