class MotivoCancelamentoCargaModel {
  int? idMotivoCancelamentoCarga;
  String? descricao;

  MotivoCancelamentoCargaModel(
      {this.idMotivoCancelamentoCarga, this.descricao});

  factory MotivoCancelamentoCargaModel.fromJson(Map<String, dynamic> json) {
    return MotivoCancelamentoCargaModel(
      idMotivoCancelamentoCarga: json['id_mot_cncl_carga'],
      descricao: json['descricao'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_mot_cncl_carga'] = idMotivoCancelamentoCarga;
    data['descricao'] = descricao;
    return data;
  }
}
