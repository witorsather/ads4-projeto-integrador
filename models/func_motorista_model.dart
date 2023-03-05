import 'package:gpp/src/models/funcionario_model.dart';

class FuncMotoristaModel {
  int? idFuncMotorista;
  String? idFuncionario;
  String? idMotorista;
  FuncionarioModel? funcionario;

  FuncMotoristaModel(
      {this.idFuncMotorista,
      this.idFuncionario,
      this.idMotorista,
      this.funcionario});

  FuncMotoristaModel.fromJson(Map<String, dynamic> json) {
    idFuncMotorista = json['id_func_motorista'];
    idFuncionario = json['id_funcionario'];
    idMotorista = json['id_motorista'];
    funcionario = json['funcionario'] != null
        ? new FuncionarioModel.fromJson(json['funcionario'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_func_motorista'] = this.idFuncMotorista;
    data['id_funcionario'] = this.idFuncionario;
    data['id_motorista'] = this.idMotorista;
    if (this.funcionario != null) {
      data['funcionario'] = this.funcionario!.toJson();
    }
    return data;
  }
}
