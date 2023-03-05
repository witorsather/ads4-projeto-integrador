import 'package:gpp/src/models/pecas_model/peca_model.dart';
import 'package:gpp/src/models/produto/produto_model.dart';

class ProdutoPecaModel {
  int? idProdutoPeca;
  int? quantidadePorProduto;
  PecasModel? peca;
  ProdutoModel? produto;
  int? id_produto;
  int? id_peca;
  int? status;
  int? situacao;

  ProdutoPecaModel(
      {this.idProdutoPeca,
      this.quantidadePorProduto,
      this.peca,
      this.produto,
      this.id_produto,
      this.id_peca,
      this.situacao,
      this.status});

  factory ProdutoPecaModel.fromJson(Map<String, dynamic> json) {
    return ProdutoPecaModel(
        idProdutoPeca: json['id_produto_peca'],
        quantidadePorProduto: json['quantidade_por_produto'],
        id_produto: json['id_produto'],
        peca: json['peca'] == null ? null : PecasModel.fromJson(json['peca']),
        produto: json['produto'] == null ? null : ProdutoModel.fromJson(json['produto']),
        id_peca: json['id_peca'],
        situacao: json['situacao'],
        status: json['status']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['quantidade_por_produto'] = quantidadePorProduto != null ? quantidadePorProduto : null;
    data['pecas'] = peca != null ? peca!.toJson() : null;

    data['id_produto_peca'] = this.idProdutoPeca;
    data['id_produto'] = this.id_produto;

    data['id_peca'] = this.id_peca;

    return data;
  }
}
