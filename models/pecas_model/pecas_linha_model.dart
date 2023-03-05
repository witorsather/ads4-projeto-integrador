import 'package:gpp/src/models/pecas_model/pecas_especie_model.dart';

class PecasLinhaModel {
  int? id_peca_linha;
  String? linha;
  int? situacao;

  List<PecasEspecieModel>? especie;

  PecasLinhaModel({
    this.id_peca_linha,
    this.linha,
    this.situacao,
    this.especie,
  });

  factory PecasLinhaModel.fromJson(Map<String, dynamic> json) {
    // List<PecasEspecieModel>? _especie;

    // json["especie"] == null ? null : json["especie"].map<PecasEspecieModel>((data) => PecasEspecieModel.fromJson(data)).toList();

    return PecasLinhaModel(
      id_peca_linha: json['id_peca_linha'],
      linha: json['linha'],
      situacao: json['situacao'],
      especie: json['especie'] != null
          ? json['especie'].map<PecasEspecieModel>((data) {
              return PecasEspecieModel.fromJson(data);
            }).toList()
          : null,
    );
  }

  // factory PecasLinhaModel.fromJsonEspecie(Map<String, dynamic> json) {
  //   return PecasLinhaModel(
  //     // especie: List<PecasEspecieModel>.from(json["especie"].map((x) => PecasEspecieModel.fromJson(x))),
  //     especie: json["especie"] == null
  //         ? null
  //         : List<PecasEspecieModel>.from(json["especie"].map((x) => PecasEspecieModel.fromJson(x))),
  //   );
  // }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();

    // data['id_peca_linha'] = this.id_peca_linha;
    data['linha'] = this.linha;
    // data['active'] = this.active;

    return data;
  }
}
