import 'package:gpp/src/models/estante_enderecamento_model.dart';
import 'package:gpp/src/models/piso_enderecamento_model.dart';

class CorredorEnderecamentoModel {
  int? id_corredor;
  String? desc_corredor;
  int? id_piso;
  PisoEnderecamentoModel? piso;
  EstanteEnderecamentoModel? estante;

  CorredorEnderecamentoModel(
      {this.id_corredor,
      this.desc_corredor,
      this.id_piso,
      this.piso,
      this.estante});

  factory CorredorEnderecamentoModel.fromJson(Map<String, dynamic> json) {
    return CorredorEnderecamentoModel(
        id_corredor: json['id_corredor'],
        desc_corredor: json['desc_corredor'],
        id_piso: json['id_piso'],
        piso: json['piso'] == null
            ? null
            : PisoEnderecamentoModel.fromJson(json['piso']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id_corredor'] = this.id_corredor;
    data['desc_corredor'] = this.desc_corredor;
    data['id_piso'] = this.id_piso;
    data['estante'] = this.estante != null ? this.estante!.toJson() : null;

    return data;
  }
}
