import 'package:gpp/src/models/pecas_model/peca_model.dart';

class ItemPedidoEntradaModel {
  int? idItemPedidoEntrada;
  int? quantidade;
  double? custo;
  PecasModel? peca;
  int? quantidade_recebida;
  int? id_pedido_entrada;

  ItemPedidoEntradaModel({
    this.idItemPedidoEntrada,
    this.quantidade,
    this.custo,
    this.peca,
    this.id_pedido_entrada,
  });

  factory ItemPedidoEntradaModel.fromJson(Map<String, dynamic> json) {
    return ItemPedidoEntradaModel(
      idItemPedidoEntrada: json['id_item_pedido_entrada'],
      quantidade: json['quantidade'],
      custo: double.tryParse(json['custo'].toString()),
      id_pedido_entrada: json['id_pedido_entrada'],
      peca: json['peca'] != null ? PecasModel.fromJson(json['peca']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_item_pedido_entrada'] = idItemPedidoEntrada;
    data['quantidade'] = quantidade;
    data['custo'] = custo;
    data['peca'] = peca != null ? peca!.toJson() : null;
    return data;
  }
}
