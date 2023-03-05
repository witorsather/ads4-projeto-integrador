class DepartamentoModel {
  int? idDepartamento;
  String? nome;
  bool? situacao;
  String? createdAt;
  String? updatedAt;
  DepartamentoModel({
    this.idDepartamento,
    this.nome,
    this.situacao,
    this.createdAt,
    this.updatedAt,
  });

  factory DepartamentoModel.fromJson(Map<String, dynamic> json) {
    return DepartamentoModel(
        idDepartamento: json['id_departamento'],
        nome: json['nome'],
        situacao: json['situacao'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_departamento'] = idDepartamento;
    data['nome'] = nome;
    data['situacao'] = situacao;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
