class AstecaEndClienteModel {
  int? idAstecaEndCli;
  String? logradouro;
  String? complemento;
  int? numero;
  String? bairro;
  String? cep;
  String? localidade;
  String? uf;
  int? ddd;
  int? telefone;
  String? pontoReferencia1;
  String? pontoReferencia2;

  AstecaEndClienteModel(
      {this.idAstecaEndCli,
      this.logradouro,
      this.localidade,
      this.numero,
      this.complemento,
      this.bairro,
      this.uf,
      this.cep,
      this.pontoReferencia1,
      this.pontoReferencia2,
      this.ddd,
      this.telefone});

  AstecaEndClienteModel.fromJson(Map<String, dynamic> json) {
    idAstecaEndCli = json['id_asteca_end_cli'];
    logradouro = json['logradouro'];
    localidade = json['localidade'];
    numero = json['numero'];
    complemento = json['complemento'];
    bairro = json['bairro'];
    uf = json['uf'];
    cep = json['cep'];
    pontoReferencia1 = json['ponto_referencia_1'];
    pontoReferencia2 = json['ponto_referencia_2'];
    ddd = json['ddd'];
    telefone = json['telefone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_asteca_end_cli'] = this.idAstecaEndCli;
    data['logradouro'] = this.logradouro;
    data['localidade'] = this.localidade;
    data['numero'] = this.numero;
    data['complemento'] = this.complemento;
    data['bairro'] = this.bairro;
    data['uf'] = this.uf;
    data['cep'] = this.cep;
    data['ponto_referencia_1'] = this.pontoReferencia1;
    data['ponto_referencia_2'] = this.pontoReferencia2;
    data['ddd'] = this.ddd;
    data['telefone'] = this.telefone;
    return data;
  }
}
