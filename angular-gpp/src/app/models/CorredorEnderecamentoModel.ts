import { PisoEnderecamentoModel } from './PisoEnderecamentoModel';
import { EstanteEnderecamentoModel } from './EstanteEnderecamentoModel';

export class CorredorEnderecamentoModel {
  id_corredor: number;
  desc_corredor: string;
  id_piso: number;
  piso: PisoEnderecamentoModel;
  estante: EstanteEnderecamentoModel;

  constructor(
    id_corredor: number,
    desc_corredor: string,
    id_piso: number,
    piso: PisoEnderecamentoModel,
    estante: EstanteEnderecamentoModel
  ) {
    this.id_corredor = id_corredor;
    this.desc_corredor = desc_corredor;
    this.id_piso = id_piso;
    this.piso = piso;
    this.estante = estante;
  }
}
