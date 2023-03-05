import 'package:gpp/src/models/funcionario_model.dart';
import 'package:gpp/src/models/pecas_model/peca_model.dart';
import 'package:gpp/src/models/pecas_model/pecas_estoque_model.dart';
import 'package:gpp/src/models/motivo_model.dart';

class ItemPedidoSaidaModel {
  int? idItemPedidoSaida;
  int quantidade = 0;
  double valor = 0.0;
  PecasModel? peca;
  int? separado;
  FuncionarioModel? separador;
  DateTime? dataSeparacao;

  MotivoModel? motivoTrocaPeca;
  bool pendenciaItem = false;
  String? endereco;
  int? saldo_disponivel;
  PecasEstoqueModel? pecaEstoque;

  ItemPedidoSaidaModel(
      {this.idItemPedidoSaida,
      required this.quantidade,
      required this.valor,
      this.peca,
      this.motivoTrocaPeca,
      this.endereco,
      this.saldo_disponivel,
      this.pecaEstoque,
      this.separador,
      this.dataSeparacao,
      this.separado});

  factory ItemPedidoSaidaModel.fromJson(Map<String, dynamic> json) {
    return ItemPedidoSaidaModel(
      idItemPedidoSaida: json['id_item_pedido_saida'],
      quantidade: json['quantidade'],
      valor: double.parse(json['valor'].toString()),
      motivoTrocaPeca: json['motivo_troca_peca'] != null
          ? MotivoModel.fromJson(json['motivo_troca_peca'])
          : null,
      peca: json['peca'] != null ? PecasModel.fromJson(json['peca']) : null,
      endereco: json['endereco'],
      pecaEstoque: json['peca_estoque'] != null
          ? PecasEstoqueModel.fromJson(json['peca_estoque'])
          : null,
      separado: json['separado'] != null ? json['separado'] : null,
      dataSeparacao: json['data_separacao'] != null
          ? DateTime.parse(json['data_separacao'])
          : null,
      separador: json['separador'] != null
          ? FuncionarioModel.fromJson(json['separador'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['quantidade'] = quantidade;
    data['valor'] = valor;
    data['pendencia_item'] = pendenciaItem;
    data['motivo_troca_peca'] =
        motivoTrocaPeca != null ? motivoTrocaPeca!.toJson() : null;
    data['peca'] = peca != null ? peca!.toJson() : null;
    data['peca_estoque'] = pecaEstoque != null ? pecaEstoque!.toJson() : null;
    return data;
  }
}
