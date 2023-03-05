class ProdutoOSModel {
  String? idProduto;
  String? denominacao;
  String? idLd;
  String? idDepartamento;
  String? idGrupo;
  String? idCor;
  String? saldoDisponivel;
  String? custoMedio;

  ProdutoOSModel(
      {this.idProduto,
      this.denominacao,
      this.idLd,
      this.idDepartamento,
      this.idGrupo,
      this.idCor,
      this.saldoDisponivel,
      this.custoMedio});

  ProdutoOSModel.fromJson(Map<String, dynamic> json) {
    this.idProduto = json['id_produto'];
    this.denominacao = json['denominacao'];
    this.idLd = json['id_ld'];
    this.idDepartamento = json['id_departamento'];
    this.idGrupo = json['id_grupo'];
    this.idCor = json['id_cor'];
    this.saldoDisponivel = json['saldo_disponivel'];
    this.custoMedio = json['custo_medio'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();

    data['id_produto'] = this.idProduto;
    data['denominacao'] = this.denominacao;
    data['id_ld'] = this.idLd;
    data['id_departamento'] = this.idDepartamento;
    data['id_grupo'] = this.idGrupo;
    data['id_cor'] = this.idCor;
    data['saldo_disponivel'] = this.saldoDisponivel;
    data['custo_medio'] = this.custoMedio;

    return data;
  }
}
