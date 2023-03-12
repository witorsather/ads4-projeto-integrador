
export class DocumentoFiscalModel {
  idDocumentoFiscal: number = 0;
  idFilialSaida: number = 0;
  nome: string = "";
  cpfCnpj: string = "";
  numDocFiscal: number = 0;
  serieDocFiscal: string = "";
  dataEmissao: Date = new Date;
  itemDocFiscal: ItemDocFiscalModel = new ItemDocFiscalModel;
  cliente: ClienteModel = new ClienteModel;
  clienteFilial : ClienteFilialModel = new ClienteFilialModel;
  descricao: string = "";
  fornecedor: string = "";


}
