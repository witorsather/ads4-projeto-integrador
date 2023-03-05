import 'package:gpp/src/models/departament_model.dart';
import 'package:gpp/src/models/perfil_usuario_model.dart';

class UsuarioModel {
  int? id;
  int? uid;
  String? nome;
  String? email;
  int? idFilial;
  String? accessToken;
  String? tokenType;
  String? emailVerifiedAt;
  String? password;
  String? rememberToken;
  String? createdAt;
  String? updatedAt;
  bool? active;
  String? iddepto;
  String? foto;
  DepartamentoModel? departament;
  PerfilUsuarioModel? perfilUsuario;

  UsuarioModel(
      {this.id,
      this.uid,
      this.nome,
      this.email,
      this.idFilial,
      this.accessToken,
      this.tokenType,
      this.emailVerifiedAt,
      this.password,
      this.rememberToken,
      this.createdAt,
      this.updatedAt,
      this.active,
      this.iddepto,
      this.foto,
      this.departament,
      this.perfilUsuario});

  factory UsuarioModel.fromJson(Map<String, dynamic> json) {
    return UsuarioModel(
        id: json['id'],
        uid: json['uid'],
        nome: json['name'],
        email: json['email'],
        idFilial: json['id_filial'],
        accessToken: json['access_token'],
        tokenType: json['token_type'],
        perfilUsuario: json['perfil_usuario'] != null
            ? PerfilUsuarioModel.fromJson(json['perfil_usuario'])
            : null
        //emailVerifiedAt: json['email_verified_at'],
        //password: json['password'],
        //rememberToken: json['remember_token'],
        //createdAt: json['created_at'],
        //updatedAt: json['updated_at'],
        //active: json['active'],
        //iddepto: json['iddepto'],
        // departament: DepartamentoModel(
        //     idDepartamento: json['departament_id'],
        //     nome: json['departament_name'],
        //     situacao: json['departament_active']),
        //foto: json['foto']);
        );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['uid'] = uid;
    data['name'] = nome;
    data['email'] = email;
    data['id_filial'] = idFilial;
    data['access_token'] = accessToken;
    data['token_type'] = tokenType;
    data['email_verified_at'] = emailVerifiedAt;
    data['password'] = password;
    data['remember_token'] = rememberToken;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['active'] = active;
    data['iddepto'] = iddepto;
    data['departament'] = departament != null ? departament!.toJson() : null;
    data['foto'] = foto;
    data['perfil_usuario'] =
        perfilUsuario != null ? perfilUsuario!.toJson() : null;
    return data;
  }
}
