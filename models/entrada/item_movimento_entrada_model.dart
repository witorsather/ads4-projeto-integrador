import 'package:gpp/src/models/pecas_model/peca_model.dart';

class ItemMovimentoEntradaModel {
  int? id_item_movimento_entrada;
  int? id_movimento_entrada;
  int? quantidade;
  int? quantidade_pedido;
  int? movimento_entrada;
  int? id_peca;
  double? valor_unitario;
  PecasModel? pecaModel;
  int? id_pedido_entrada;

  ItemMovimentoEntradaModel({
    this.id_item_movimento_entrada,
    this.id_movimento_entrada,
    this.quantidade,
    this.quantidade_pedido,
    this.movimento_entrada,
    this.id_peca,
    this.valor_unitario,
    this.pecaModel,
    this.id_pedido_entrada,
  });

  factory ItemMovimentoEntradaModel.fromJson(Map<String, dynamic> json) {
    return ItemMovimentoEntradaModel(
        id_item_movimento_entrada: json['id_item_movimento_entrada'],
        id_movimento_entrada: json['id_movimento_entrada'],
        quantidade: json['quantidade'],
        movimento_entrada: json['movimento_entrada'],
        id_peca: json['id_peca'],
        valor_unitario: double.tryParse(json['valor_unitario'].toString()),
        pecaModel: json['peca'] == null ? null : PecasModel.fromJson(json['peca']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    //data['id_item_movimento_entrada'] = this.id_item_movimento_entrada;
    //data['id_movimento_entrada'] = this.id_movimento_entrada;
    data['quantidade'] = this.quantidade;
    //data['movimento_entrada'] = this.movimento_entrada;
    data['id_peca'] = this.id_peca;
    data['valor_unitario'] = this.valor_unitario;
    data['id_pedido_entrada'] = this.id_pedido_entrada;

    return data;
  }
}
