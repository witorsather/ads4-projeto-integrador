import 'package:gpp/src/models/pecas_model/cliente_model.dart';

class PecasFornecedorModel {
  int? id_fornecedor;
  String? enviado;
  String? cli_forn_principal;

  PecasClienteModel? cliente;

  PecasFornecedorModel({
    this.id_fornecedor,
    this.enviado,
    this.cli_forn_principal,
    this.cliente,
  });

  factory PecasFornecedorModel.fromJson(Map<String, dynamic> json) {
    return PecasFornecedorModel(
      id_fornecedor: json['id_fornecedor'],
      enviado: json['enviado'],
      cli_forn_principal: json['cli_forn_principal'],
      cliente: json['cliente'] == null
          ? null
          : PecasClienteModel.fromJson(json['cliente']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['id_fornecedor'] = this.id_fornecedor;
    data['enviado'] = this.enviado;
    data['cli_forn_principal'] = this.cli_forn_principal;

    return data;
  }
}
