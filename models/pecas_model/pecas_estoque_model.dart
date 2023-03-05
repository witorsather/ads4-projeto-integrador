import 'package:gpp/src/models/box_enderecamento_model.dart';

import 'package:gpp/src/models/pecas_model/peca_model.dart';

class PecasEstoqueModel {
  int? id_peca_estoque;
  int? filial;
  int? id_peca;
  int? id_box;
  int? saldo_disponivel;
  int? saldo_reservado;
  int? quantidade_transferencia;
  int? quantidade_minima;
  PecasModel? peca;
  BoxEnderecamentoModel? box;
  String? fornecedor;
  String? endereco;

  PecasEstoqueModel(
      {this.id_peca_estoque,
      this.filial,
      this.id_peca,
      this.id_box,
      this.saldo_disponivel,
      this.saldo_reservado,
      this.quantidade_transferencia,
      this.quantidade_minima,
      this.fornecedor,
      this.endereco,
      this.peca,
      this.box});

  factory PecasEstoqueModel.fromJson(Map<String, dynamic> json) {
    return PecasEstoqueModel(
      id_peca_estoque: json['id_peca_estoque'],
      filial: json['id_filial'],
      id_peca: json['id_peca'],
      id_box: json['id_box'],
      saldo_disponivel: json['saldo_disponivel'],
      saldo_reservado: json['saldo_reservado'],
      quantidade_transferencia: json['quantidade_transferencia'],
      quantidade_minima: json['quantidade_minima'],
      fornecedor: json['fornecedor'] != null ? json['fornecedor'] : null,
      endereco: json['endereco'] != null ? json['endereco'] : null,
      peca: json['peca'] == null ? null : PecasModel.fromJson(json['peca']),
      box: json['box'] == null ? null : BoxEnderecamentoModel.fromJson(json['box']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id_peca_estoque'] = this.id_peca_estoque;
    data['id_filial'] = this.filial;
    data['id_peca'] = this.id_peca;
    data['id_box'] = this.id_box;
    data['saldo_disponivel'] = this.saldo_disponivel != null ? this.saldo_disponivel : null;
    data['saldo_reservado'] = this.saldo_reservado != null ? this.saldo_reservado : null;
    data['quantidade_transferencia'] = this.quantidade_transferencia != null ? this.quantidade_transferencia : null;
    data['quantidade_minima'] = this.quantidade_minima;
    data['enderecamento_box'] = this.box != null ? box!.toJson() : null;

    return data;
  }
}
