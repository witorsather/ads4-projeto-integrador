import 'package:gpp/src/models/asteca/asteca_model.dart';
import 'package:gpp/src/models/asteca/asteca_tipo_pendencia_model.dart';

class AstecaPendenciaModel {
  int? idAstecaPendencia;
  AstecaModel? asteca;
  AstecaTipoPendenciaModel? astecaTipoPendencia;

  AstecaPendenciaModel(
      {this.idAstecaPendencia, this.asteca, this.astecaTipoPendencia});

  factory AstecaPendenciaModel.fromJson(Map<String, dynamic> json) {
    return AstecaPendenciaModel(
        idAstecaPendencia: json['id_asteca_pendencia'] != null
            ? json['id_asteca_pendencia']
            : null,
        asteca: json['asteca'] != null
            ? AstecaModel.fromJson(json['asteca'])
            : null,
        astecaTipoPendencia: json['asteca_tipo_pendencia'] != null
            ? AstecaTipoPendenciaModel.fromJson(json['asteca_tipo_pendencia'])
            : null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_asteca_Pendencia'] = idAstecaPendencia;
    data['asteca'] = asteca != null ? asteca!.toJson() : null;
    data['asteca_tipo_pendencia'] =
        astecaTipoPendencia != null ? astecaTipoPendencia!.toJson() : null;
    return data;
  }
}
