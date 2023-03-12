export class PedidoSaidaModel {
  idPedidoSaida: number = 0;
  cpfCnpj: string = "";
  filial_registro: number = 0;
  numDocFiscal: number = 0;
  serieDocFiscal: string = "";
  dataEmissao: Date | undefined;
  situacao: number = 0;
  valorTotal: number = 0;
  verificaEstoque: boolean = false;
  clienteFilial: ClienteFilialModel;
  asteca: AstecaModel;
  funcionario: FuncionarioModel;
  cliente: ClienteModel;
  itemsPedidoSaida: List<ItemPedidoSaidaModel>;
  pedidoSaidaEvento: List<PedidoSaidaEventoModel>;

}
