class PecasCorModel {
  int? id_peca_cor;
  String? cor;
  String? sigla;
  int? situacao;

  PecasCorModel({
    this.id_peca_cor,
    this.cor,
    this.sigla,
    this.situacao,
  });

  factory PecasCorModel.fromJson(Map<String, dynamic> json) {
    return PecasCorModel(
      id_peca_cor: json['id_peca_cor'],
      cor: json['cor'],
      sigla: json['sigla'],
      situacao: json['situacao'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    // data['id_peca_cor'] = this.id_peca_cor;
    data['cor'] = this.cor;
    data['sigla'] = this.sigla;
    data['situacao'] = this.situacao;

    return data;
  }
}
