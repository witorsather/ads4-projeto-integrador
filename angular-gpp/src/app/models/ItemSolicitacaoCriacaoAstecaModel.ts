export class ItemSolicitacaoCriacaoAstecaModel {
  idItemPedidoSaida: number = 0;
  quantidade: number = 0;
  valor: number = 0;
  peca: string = "";
  separado: number = 0;
  separador: string = "";
  dataSeparacao: Date | undefined;
  motivoTrocaPeca: string = "";
  pendenciaItem: boolean = false;
  endereco: string = "";
  saldo_disponivel: number = 0;
  pecaEstoque: string = "";

  

}
