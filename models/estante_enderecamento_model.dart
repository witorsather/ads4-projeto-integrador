import 'package:gpp/src/models/corredor_enderecamento_model.dart';
import 'package:gpp/src/models/prateleira_enderecamento_model.dart';

class EstanteEnderecamentoModel {
  int? id_estante;
  String? desc_estante;
  int? id_corredor;
  int? id_prateleira;
  PrateleiraEnderecamentoModel? prateleira;

  CorredorEnderecamentoModel? corredor;

  EstanteEnderecamentoModel(
      {this.id_estante,
      this.desc_estante,
      this.id_corredor,
      this.id_prateleira,
      this.prateleira,
      this.corredor});

  factory EstanteEnderecamentoModel.fromJson(Map<String, dynamic> json) {
    return EstanteEnderecamentoModel(
        id_estante: json['id_estante'],
        desc_estante: json['desc_estante'],
        id_corredor: json['id_corredor'],
        id_prateleira: json['id_prateleira'],
        corredor: json['corredor'] == null
            ? null
            : CorredorEnderecamentoModel.fromJson(json['corredor']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id_estante'] = this.id_estante;
    data['desc_estante'] = this.desc_estante;
    data['id_corredor'] = this.id_corredor;
    data['id_prateleira'] = this.id_prateleira;
    data['prateleira'] =
        this.prateleira != null ? this.prateleira!.toJson() : null;

    return data;
  }
}
