class AstecaMotivoModel {
  int? idAstecaMotivo;
  String? denominacao;

  AstecaMotivoModel({this.idAstecaMotivo, this.denominacao});

  factory AstecaMotivoModel.fromJson(Map<String, dynamic> json) {
    return AstecaMotivoModel(
        idAstecaMotivo: json['id_asteca_motivo'] != null
            ? int.parse(
                json['id_asteca_motivo'].toString(),
              )
            : 0,
        denominacao: json['denominacao']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_asteca_motivo'] = this.idAstecaMotivo;
    data['denominacao'] = this.denominacao;
    return data;
  }
}
