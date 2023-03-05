import 'package:gpp/src/models/pecas_model/pecas_grupo_model.dart';

class PecasMaterialModel {
  int? id_peca_material_fabricacao;
  String? material;
  String? sigla;
  int? situacao;
  int? id_peca_grupo_material;

  PecasGrupoModel? grupo_material;

  PecasMaterialModel({
    this.id_peca_material_fabricacao,
    this.material,
    this.sigla,
    this.situacao,
    this.id_peca_grupo_material,
    this.grupo_material,
  });

  factory PecasMaterialModel.fromJson(Map<String, dynamic> json) {
    return PecasMaterialModel(
      id_peca_material_fabricacao: json['id_peca_material_fabricacao'],
      material: json['material'],
      sigla: json['sigla'],
      situacao: json['situacao'],
      id_peca_grupo_material: json['id_peca_grupo_material'],
      grupo_material: json['grupo_material'] == null
          ? null
          : PecasGrupoModel.fromJson(json['grupo_material']),
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();

    data['id_peca_material_fabricacao'] = this.id_peca_material_fabricacao;
    data['material'] = this.material;
    data['sigla'] = this.sigla;
    data['situacao'] = this.situacao;
    data['id_peca_grupo_material'] = this.id_peca_grupo_material;

    return data;
  }
}
