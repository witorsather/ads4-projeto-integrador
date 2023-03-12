export class PecasEstoqueModel {
  id_peca_estoque: number = 0;
  filial: number = 0;
  id_peca: number = 0;
  id_box: number = 0;
  saldo_disponivel: number = 0;
  saldo_reservado: number = 0;
  quantidade_transferencia: number = 0;
  quantidade_minima: number = 0;
  peca: PecasModel = new PecasModel;
  box: BoxEnderecamentoModel = new BoxEnderecamentoModel;
  fornecedor: string = "";
  endereco: string = "";


}
