import 'package:gpp/src/models/pecas_model/pecas_linha_model.dart';

class PecasEspecieModel {
  int? id_peca_especie;
  String? especie;
  int? situacao;
  int? id_peca_linha;

  PecasLinhaModel? linha;

  PecasEspecieModel({
    this.id_peca_especie,
    this.especie,
    this.situacao,
    this.id_peca_linha,
    this.linha,
  });

  factory PecasEspecieModel.fromJson(Map<String, dynamic> json) {
    return PecasEspecieModel(
      id_peca_especie: json['id_peca_especie'],
      especie: json['especie'],
      situacao: json['situacao'],
      id_peca_linha: json['id_peca_linha'],
      linha: json["linha"] == null
          ? null
          : PecasLinhaModel.fromJson(json["linha"]),
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();

    // data['id_peca_especie'] = this.id_peca_especie;
    data['especie'] = this.especie;
    // data['active'] = this.active;
    data['id_peca_linha'] = this.id_peca_linha;

    return data;
  }
}
