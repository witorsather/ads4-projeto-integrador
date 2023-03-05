import 'package:gpp/src/models/box_enderecamento_model.dart';
import 'package:gpp/src/models/estante_enderecamento_model.dart';

class PrateleiraEnderecamentoModel {
  int? id_prateleira;
  String? desc_prateleira;
  int? id_estante;
  BoxEnderecamentoModel? box;

  EstanteEnderecamentoModel? estante;

  PrateleiraEnderecamentoModel(
      {this.id_prateleira,
      this.desc_prateleira,
      this.id_estante,
      this.box,
      this.estante});

  factory PrateleiraEnderecamentoModel.fromJson(Map<String, dynamic> json) {
    return PrateleiraEnderecamentoModel(
        id_prateleira: json['id_prateleira'],
        desc_prateleira: json['desc_prateleira'],
        id_estante: json['id_estante'],
        estante: json['estante'] == null
            ? null
            : EstanteEnderecamentoModel.fromJson(json['estante']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id_prateleira'] = this.id_prateleira;
    data['desc_prateleira'] = this.desc_prateleira;
    data['id_estante'] = this.id_estante;
    data['box'] = this.box != null ? this.box!.toJson() : null;

    return data;
  }
}
