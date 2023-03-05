import 'package:gpp/src/models/filial/end_cliente_model.dart';

class ClienteModel {
  int? idCliente;
  String? nome;
  String? cpfCnpj;
  String? email;
  EndClienteModel? end_cliente;

  ClienteModel({
    this.idCliente,
    this.nome,
    this.cpfCnpj,
    this.email,
    this.end_cliente,
  });

  ClienteModel.fromJson(Map<String, dynamic> json) {
    idCliente = json['id_cliente'];
    nome = json['nome'];
    cpfCnpj = json['cnpj_cpf'] != null ? json['cnpj_cpf'] : null;
    email = json['e_mail'] != null ? json['e_mail'] : null;
    end_cliente = json['end_cliente'] != null
        ? EndClienteModel.fromJson(json['end_cliente'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_cliente'] = this.idCliente;
    data['nome'] = this.nome;
    data['cnpj_cpf'] = this.cpfCnpj;
    data['e_mail'] = email;
    return data;
  }
}
