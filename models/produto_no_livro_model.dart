class ProdutoNoLivromodel {
  String? produtoNoLivro;

  ProdutoNoLivromodel({this.produtoNoLivro});

  ProdutoNoLivromodel.fromJson(Map<String, dynamic> json) {
    produtoNoLivro = json['produto_no_livro'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['produto_no_livro'] = this.produtoNoLivro;
    return data;
  }
}