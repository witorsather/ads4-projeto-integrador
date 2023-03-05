class PecasClienteModel {
  int? id_cliente;
  String? nome;

  PecasClienteModel({
    this.id_cliente,
    this.nome,
  });

  factory PecasClienteModel.fromJson(Map<String, dynamic> json) {
    return PecasClienteModel(
      id_cliente: json['id_cliente'],
      nome: json['nome'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['id_cliente'] = this.id_cliente;
    data['nome'] = this.nome;

    return data;
  }
}
