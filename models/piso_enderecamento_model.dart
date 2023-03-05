import 'package:gpp/src/models/corredor_enderecamento_model.dart';

class PisoEnderecamentoModel {
  int? id_piso;
  String? desc_piso;
  int? id_filial;
  CorredorEnderecamentoModel? corredor;

  PisoEnderecamentoModel(
      {this.id_piso, this.desc_piso, this.id_filial, this.corredor});

  factory PisoEnderecamentoModel.fromJson(Map<String, dynamic> json) {
    return PisoEnderecamentoModel(
        id_piso: json['id_piso'],
        desc_piso: json['desc_piso'],
        id_filial: json['id_filial']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['desc_piso'] = this.desc_piso != null ? this.desc_piso : null;
    data['id_piso'] = this.id_piso != null ? this.id_piso : null;
    data['corredor'] = this.corredor != null ? this.corredor!.toJson() : null;

    return data;
  }
}
