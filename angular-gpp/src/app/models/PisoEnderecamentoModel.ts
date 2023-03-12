import { CorredorEnderecamentoModel } from './CorredorEnderecamentoModel';

export class PisoEnderecamentoModel {
  id_piso: number;
  desc_piso: string;
  id_filial: number;
  corredor: CorredorEnderecamentoModel;

  constructor(
    id_piso: number,
    desc_piso: string,
    id_filial: number,
    corredor: CorredorEnderecamentoModel
  ) {
    this.id_piso = id_piso;
    this.desc_piso = desc_piso;
    this.id_filial = id_filial;
    this.corredor = corredor;
  }
}
