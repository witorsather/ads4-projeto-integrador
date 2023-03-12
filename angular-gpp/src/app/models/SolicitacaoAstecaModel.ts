export class SolicitacaoAstecaModel {
  idAsteca: number = 0;
  astecaMotivo: string = "";
  tipoAsteca: number = 0;
  idFilialRegistro: number = 0;
  observacao: string = "";
  defeitoEstadoProd: string = "";
  dataEmissao!: Date;
  astecaEndCliente: string = "";
  documentoFiscal: string = "";
  compEstProd: string[] = ["test1", "test2", "testtest"];
  funcionario: string = "";
  pedidoSaida: string = "";
  pedidoEntrada: string = "";
  astecaPendencias: string[] = ["test1", "test2", "testtest"];

}
