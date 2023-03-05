import 'package:gpp/src/models/cliente_model.dart';
import 'package:gpp/src/models/funcionario_model.dart';

class ClienteFuncModel {
  FuncionarioModel? funcionario;
  ClienteModel? cliente;

  ClienteFuncModel({this.funcionario, this.cliente});

  factory ClienteFuncModel.fromJson(Map<String, dynamic> json) {
    return ClienteFuncModel(
        funcionario: json['funcionario'] != null
            ? FuncionarioModel.fromJson(json['funcionario'])
            : null,
        cliente: json['cliente'] != null
            ? ClienteModel.fromJson(json['cliente'])
            : null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['funcionario'] =
        this.funcionario != null ? this.funcionario!.toJson() : null;
    data['cliente'] = this.cliente != null ? this.cliente!.toJson() : null;
    return data;
  }
}
