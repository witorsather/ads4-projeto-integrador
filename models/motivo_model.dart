class MotivoModel {
  int? idMotivo;
  String? nome;
  bool? situacao;
  int? tipo_motivo;
  MotivoModel({this.idMotivo, this.nome, this.situacao, this.tipo_motivo});

  factory MotivoModel.fromJson(Map<String, dynamic> json) {
    return MotivoModel(
      idMotivo: json['id_motivo'],
      nome: json['nome'],
      situacao: json['situacao'],
      tipo_motivo: json['tipo_motivo'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_motivo'] = idMotivo;
    data['nome'] = nome;
    data['situacao'] = situacao;
    return data;
  }
}
