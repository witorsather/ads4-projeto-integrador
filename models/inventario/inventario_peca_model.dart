import 'package:gpp/src/models/pecas_model/peca_model.dart';

class InventarioPecaModel {
  int? id_inventario_peca;
  int? id_inventario;
  int? id_peca;
  int? qtd_disponivel;
  int? qtd_reservado;
  int? qtd_contada;
  String? endereco;
  int? id_funcionario;
  PecasModel? peca;

  InventarioPecaModel({
    this.id_inventario_peca,
    this.id_inventario,
    this.id_peca,
    this.qtd_disponivel,
    this.qtd_reservado,
    this.qtd_contada,
    this.endereco,
    this.id_funcionario,
    this.peca,
  });

  factory InventarioPecaModel.fromJson(Map<String, dynamic> json) {
    return InventarioPecaModel(
      id_inventario_peca: json['id_inventario_peca'],
      id_inventario: json['id_inventario'],
      id_peca: json['id_peca'],
      qtd_disponivel: json['qtd_disponivel'],
      qtd_reservado: json['qtd_reservado'],
      qtd_contada: json['qtd_contada'],
      endereco: json['endereco'],
      id_funcionario: json['id_funcionario'],
      peca: json['peca'] != null ? PecasModel.fromJson(json['peca']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['id_inventario'] = this.id_inventario;
    data['id_inventario_peca'] = this.id_inventario_peca;
    data['id_peca'] = this.id_peca;
    data['qtd_disponivel'] = this.qtd_disponivel;
    data['qtd_reservado'] = this.qtd_reservado;
    data['qtd_contada'] = this.qtd_contada;
    data['endereco'] = this.endereco;
    data['id_funcionario'] = this.id_funcionario;

    return data;
  }
}
