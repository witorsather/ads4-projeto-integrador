class ProdutoPecaModel {
  String? custoMedio;

  ProdutoPecaModel({this.custoMedio});

  ProdutoPecaModel.fromJson(Map<String, dynamic> json) {
    custoMedio = json['custo_adm'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();
    data['custo_adm'] = this.custoMedio;
    return data;
  }
}
