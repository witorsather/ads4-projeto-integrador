import 'package:gpp/src/models/cliente_model.dart';
import 'package:gpp/src/models/fornecedor_email_model.dart';

class FornecedorModel {
  int? idFornecedor;
  ClienteModel? cliente;
  FornecedorEmailModel? fornecedorEmail;

  FornecedorModel({this.idFornecedor, this.cliente, this.fornecedorEmail});

  FornecedorModel.fromJson(Map<String, dynamic> json) {
    idFornecedor = json['id_fornecedor'];
    cliente = json['cliente'] != null
        ? new ClienteModel.fromJson(json['cliente'])
        : null;
    fornecedorEmail = json['fornecedor_email'] != null
        ? new FornecedorEmailModel.fromJson(json['fornecedor_email'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_fornecedor'] = this.idFornecedor;
    if (this.cliente != null) {
      data['cliente'] = cliente != null ? this.cliente!.toJson() : null;
    }
    if (this.fornecedorEmail != null) {
      data['fornecedor_email'] = this.fornecedorEmail!.toJson();
    }
    return data;
  }
}
