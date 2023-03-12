export class PedidoEntradaModel {
  idPedidoEntrada: number = 0;
  asteca: string = "";
  dataEmissao: Date | undefined;
  situacao: number = 0;
  valorTotal: number = 0;
  id_movimento_entrada: number = 0;
  itensPedidoEntrada: string[] = ["test1", "test2", "testtest"];
  funcionario: string = "";
  filial_registro: number = 0;
  clienteFilial: string = "";
  idFornecedor: number = 0;

  

}
