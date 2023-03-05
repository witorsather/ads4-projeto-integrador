

class CodFornecedor {
  int? id_fornecedor;
  String? denominacao;

  CodFornecedor({
    this.id_fornecedor,
    this.denominacao,
  });

  factory CodFornecedor.fromJson(Map<String, dynamic> json) {
    return CodFornecedor(
      id_fornecedor: json['id_fornecedor'],
      denominacao: json['denominacao'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    return data;
  }
}
