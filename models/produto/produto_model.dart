import 'package:gpp/src/models/produto/cod_fornecedor_model.dart';
import 'package:gpp/src/models/produto/fornecedor_model.dart';
import 'package:gpp/src/models/produto_peca_model.dart';

import 'package:gpp/src/models/pecas_model/peca_model.dart';

class ProdutoModel {
  int? idProduto;
  String? resumida;
  int? situacao;
  // String? codBarra;
  // String? marca;
  // String? data_cadastro;

  List<FornecedorModel>? fornecedores;

  List<ProdutoPecaModel>? produtoPecas;
  CodFornecedor? codFornecedor;

  ProdutoModel({
    this.idProduto,
    this.situacao,
    // this.codBarra,
    this.resumida,
    // // this.marca,
    // // this.data_cadastro,
    this.fornecedores,
    this.produtoPecas,
    this.codFornecedor,
  });

  factory ProdutoModel.fromJson(Map<String, dynamic> json) {
    return ProdutoModel(
      idProduto: json['id_produto'],
      situacao: json['situacao'],
      // cod_barra: json['cod_barra'],
      resumida: json['resumida'],
      // marca: json['marca'],
      // data_cadastro: json['data_cadastro'],

      // fornecedor: json['fornecedor'] == null ? null : FornecedorPecasModel.fromJson(json['fornecedor']),
      fornecedores: json['fornecedores'] != null
          ? json['fornecedores'].map<FornecedorModel>((data) {
              return FornecedorModel.fromJson(data);
            }).toList()
          : null,
      produtoPecas: json['produto_peca'] != null
          ? json['produto_peca'].map<PecasModel>((data) {
              return PecasModel.fromJson(data);
            }).toList()
          : null,
      codFornecedor: json['cod_fornecedor'] != null ? CodFornecedor.fromJson(json['cod_fornecedor']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['produto_pecas'] = produtoPecas != null ? produtoPecas!.map((e) => e.toJson()).toList() : null;
    data['fornecedores'] = fornecedores != null ? fornecedores!.map((e) => e.toJson()).toList() : null;

    return data;
  }
}
