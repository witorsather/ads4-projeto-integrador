import 'package:gpp/src/models/cliente_transp_model.dart';

class TransportadoraModel {
  int? idTransportadora;
  String? contato;

  ClienteTranspModel? clienteTransp;

  TransportadoraModel({
    this.idTransportadora,
    this.contato,
    this.clienteTransp,
  });

  TransportadoraModel.fromJson(Map<String, dynamic> json) {
    idTransportadora = json['id_transportadora'];
    contato = json['contato'] != null ? json['contato'] : null;
    clienteTransp = json['cliente_transp'] != null
        ? ClienteTranspModel.fromJson(json['cliente_transp'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_transportadora'] = this.idTransportadora;
    data['contato'] = this.contato;

    return data;
  }
}
