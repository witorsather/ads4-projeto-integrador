import 'package:flutter/material.dart';

class SubFuncionalidadeModel {
  int? idSubFuncionalidade;
  String? nome;

  String? rota;
  bool? situacao;
  bool? mobile;
  bool? web;

  Color? colorButton;
  BoxDecoration? boxDecoration;

  SubFuncionalidadeModel(
      {this.idSubFuncionalidade,
      this.nome,
      this.rota,
      this.situacao,
      this.colorButton,
      this.boxDecoration,
      this.mobile,
      this.web});

  factory SubFuncionalidadeModel.fromJson(Map<String, dynamic> json) {
    return SubFuncionalidadeModel(
      idSubFuncionalidade: json['id_sub_funcionalidade'],
      nome: json['nome'],
      situacao: json['situacao'],
      rota: json['rota'],
      mobile: json['mobile'],
      web: json['web'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_sub_funcionalidade'] = idSubFuncionalidade;
    data['nome'] = nome;
    data['situacao'] = situacao;
    data['rota'] = rota;
    data['web'] = web;
    data['mobile'] = mobile;
    return data;
  }
}
