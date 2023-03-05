import 'package:gpp/src/models/filial/cliente_filial_model.dart';

class FilialModel {
  int? id_filial;
  String? sigla;
  ClienteFilialModel? clienteFilial;

  FilialModel({
    this.id_filial,
    this.sigla,
    this.clienteFilial,
  });

  factory FilialModel.fromJson(Map<String, dynamic> json) {
    return FilialModel(
      id_filial: json['id_filial'],
      sigla: json['sigla'],
      clienteFilial: json['cliente_filial'] != null ? ClienteFilialModel.fromJson(json['cliente_filial']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['id_filial'] = this.id_filial;
    data['sigla'] = this.sigla;

    return data;
  }
}
