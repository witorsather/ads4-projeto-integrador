class TipoMovimentoEstoqueModel {
  int? id_tipo_movimento_estoque;
  String? descricao;
  int? tipo_movimento;

  TipoMovimentoEstoqueModel({
    this.id_tipo_movimento_estoque,
    this.descricao,
    this.tipo_movimento,
  });

  factory TipoMovimentoEstoqueModel.fromJson(Map<String, dynamic> json) {
    return TipoMovimentoEstoqueModel(
      id_tipo_movimento_estoque: json['id_tipo_movimento_estoque'],
      descricao: json['descricao'],
      tipo_movimento: json['tipo_movimento'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id_tipo_movimento_estoque'] = this.id_tipo_movimento_estoque;
    data['descricao'] = this.descricao;
    data['tipo_movimento'] = this.tipo_movimento;

    return data;
  }
}
