import 'package:gpp/src/models/funcionario_model.dart';
import 'package:gpp/src/models/motivo_model.dart';
import 'package:gpp/src/models/pecas_model/pecas_estoque_model.dart';

class AjusteEstoqueModel {
  int? id_ajuste_estoque;
  int? id_motivo;
  String? observacao;
  DateTime? data_solicitacao;
  int? tipo_solicitacao;
  int? qtd_ajuste;
  int? situacao;
  DateTime? data_aprovacao;
  String? observacao_aprovador;
  FuncionarioModel? aprovador;
  FuncionarioModel? solicitante;
  PecasEstoqueModel? pecasEstoque;
  MotivoModel? motivo;

  AjusteEstoqueModel({
    this.id_ajuste_estoque,
    this.id_motivo,
    this.observacao,
    this.data_solicitacao,
    this.tipo_solicitacao,
    this.qtd_ajuste,
    this.situacao,
    this.data_aprovacao,
    this.aprovador,
    this.solicitante,
    this.pecasEstoque,
    this.motivo,
    this.observacao_aprovador,
  });

  factory AjusteEstoqueModel.fromJson(Map<String, dynamic> json) {
    return AjusteEstoqueModel(
      id_ajuste_estoque: json['id_ajuste_estoque'],
      id_motivo: json['id_motivo'],
      observacao: json['observacao'],
      data_solicitacao: json['data_solicitacao'] != null ? DateTime.parse(json['data_solicitacao']) : null,
      tipo_solicitacao: json['tipo_solicitacao'],
      qtd_ajuste: json['qtd_ajuste'],
      situacao: json['situacao'],
      data_aprovacao: json['data_aprovacao'] != null ? DateTime.parse(json['data_aprovacao']) : null,
      observacao_aprovador: json['observacao_aprovador'],
      aprovador: json['funcionario_aprovador'] != null ? FuncionarioModel.fromJson(json['funcionario_aprovador']) : null,
      solicitante: json['funcionario_solicitante'] != null ? FuncionarioModel.fromJson(json['funcionario_solicitante']) : null,
      pecasEstoque: json['peca_estoque'] != null ? PecasEstoqueModel.fromJson(json['peca_estoque']) : null,
      motivo: json['motivo'] != null ? MotivoModel.fromJson(json['motivo']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_ajuste_estoque'] = this.id_ajuste_estoque;
    data['id_motivo'] = this.id_motivo;
    data['observacao'] = this.observacao;
    data['data_solicitacao'] = this.data_solicitacao;
    data['tipo_solicitacao'] = this.tipo_solicitacao;
    data['qtd_ajuste'] = this.qtd_ajuste;
    data['situacao'] = this.situacao;
    data['data_aprovacao'] = this.data_aprovacao;
    data['observacao_aprovador'] = this.observacao_aprovador;
    data['funcionario_aprovador'] = this.aprovador;
    data['funcionario_solicitante'] = this.solicitante;
    data['peca_estoque'] = this.pecasEstoque;
    data['motivo'] = this.motivo;
    return data;
  }
}
