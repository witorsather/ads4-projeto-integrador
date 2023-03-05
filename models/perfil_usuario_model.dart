import 'package:gpp/src/models/FuncionalidadeModel.dart';

class PerfilUsuarioModel {
  int? idPerfilUsuario;
  String? descricao;
  List<FuncionalidadeModel>? funcionalidades;

  PerfilUsuarioModel({this.idPerfilUsuario, this.descricao});

  PerfilUsuarioModel.fromJson(Map<String, dynamic> json) {
    idPerfilUsuario = json['id_perfil_usuario'];
    descricao = json['descricao'];
    if (json['funcionalidades'] != null) {
      funcionalidades = <FuncionalidadeModel>[];
      json['funcionalidades'].forEach((v) {
        funcionalidades!.add(new FuncionalidadeModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_perfil_usuario'] = this.idPerfilUsuario;
    data['descricao'] = this.descricao;
    if (this.funcionalidades != null) {
      data['funcionalidades'] =
          this.funcionalidades!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
