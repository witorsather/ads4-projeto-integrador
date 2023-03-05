import 'package:gpp/src/models/cliente_model.dart';

class ClienteTranspModel {
  int? id_cliente;
  int? id_transportadora;
  int? id_fornecedor;

  ClienteModel? cliente;

  ClienteTranspModel({
    this.id_cliente,
    this.id_transportadora,
    this.id_fornecedor,
    this.cliente,
  });

  ClienteTranspModel.fromJson(Map<String, dynamic> json) {
    id_cliente = json['id_cliente'] != null ? json['id_cliente'] : null;
    id_transportadora = json['id_transportadora'] != null ? json['id_transportadora'] : null;
    id_fornecedor = json['id_fornecedor'] != null ? json['id_fornecedor'] : null;
    cliente = json['cliente'] != null ? ClienteModel.fromJson(json['cliente']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    return data;
  }
}
