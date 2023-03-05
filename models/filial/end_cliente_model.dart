class EndClienteModel {
  int? id_endereco;
  String? cep;
  String? logradouro;
  String? numero;
  String? bairro;
  String? localidade;
  String? uf;
  String? sigla_uf;
  String? complemento;

  EndClienteModel({
    this.id_endereco,
    this.cep,
    this.logradouro,
    this.numero,
    this.bairro,
    this.localidade,
    this.uf,
    this.sigla_uf,
    this.complemento,
  });

  factory EndClienteModel.fromJson(Map<String, dynamic> json) {
    return EndClienteModel(
      id_endereco: json['id_endereco'],
      cep: json['cep'],
      logradouro: json['logradouro'],
      numero: json['numero'],
      bairro: json['bairro'],
      localidade: json['localidade'],
      uf: json['uf'],
      sigla_uf: json['sigla_uf'],
      complemento: json['complemento'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    return data;
  }
}
