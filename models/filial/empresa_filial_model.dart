import 'package:gpp/src/models/filial/filial_model.dart';

class EmpresaFilialModel {
  int? id_empresa;
  int? id_filial;

  FilialModel? filial;

  EmpresaFilialModel({
    this.id_empresa,
    this.id_filial,
    this.filial,
  });

  factory EmpresaFilialModel.fromJson(Map<String, dynamic> json) {
    return EmpresaFilialModel(
      id_empresa: json['id_empresa'],
      id_filial: json['id_filial'],
      filial:
          json['filial'] != null ? FilialModel.fromJson(json['filial']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_empresa'] = this.id_empresa;
    data['id_filial'] = this.id_filial;
    return data;
  }
}
