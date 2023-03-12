import { PecaModel } from "./PecaModel";

export class ItemPedidosaidaModel {
  idItemPedidoSaida: number = 0;
  quantidade: number = 0;
  peca: PecaModel = new PecaModel;
  separado: number = 0;
  separador: FuncionarioModel = new FuncionarioModel;
  dataSeparacao!: Date;
  motivoTrocaPeca: MotivoModel = new MotivoModel;
  pendenciaItem: boolean = false;
  endereco: String;
  saldo_disponivel: int;
  pecaEstoque: PecasEstoqueModel = new PecasEstoqueModel;

}
