import 'package:gpp/src/models/cliente_func_model.dart';

class FuncionarioModel {
  int? idFuncionario;
  ClienteFuncModel? clienteFunc;

  FuncionarioModel({this.idFuncionario, this.clienteFunc});

  FuncionarioModel.fromJson(Map<String, dynamic> json) {
    idFuncionario = json['id_funcionario'];
    clienteFunc = json['cliente_func'] != null
        ? ClienteFuncModel.fromJson(json['cliente_func'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_funcionario'] = this.idFuncionario;
    data['cliente_func'] =
        this.clienteFunc != null ? this.clienteFunc!.toJson() : null;
    return data;
  }
}
