import 'package:gpp/src/models/cliente_model.dart';
import 'package:gpp/src/models/filial/filial_regional_model.dart';

class ClienteFilialModel {
  int? id_cliente;
  int? id_filial;
  ClienteModel? cliente;
  FilialRegional? filialRegional;

  ClienteFilialModel(
      {this.id_cliente, this.id_filial, this.cliente, this.filialRegional});

  factory ClienteFilialModel.fromJson(Map<String, dynamic> json) {
    return ClienteFilialModel(
      id_cliente: json['id_cliente'],
      id_filial: json['id_filial'],
      cliente: json['cliente'] != null
          ? ClienteModel.fromJson(json['cliente'])
          : null,
      filialRegional: json['filial_regional'] != null
          ? FilialRegional.fromJson(json['filial_regional'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    return data;
  }
}
