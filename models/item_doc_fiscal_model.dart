class ItemDocFiscalModel {
  int? idLd;
  int? idItemDocFiscal;
  int? numDocFiscal;
  String? denominacaoProduto;
  int? idDocumentoFiscal;
  int? qtde;
  double? valorVenda;
  double? custoAdm;

  ItemDocFiscalModel({this.idLd});

  ItemDocFiscalModel.fromJson(Map<String, dynamic> json) {
    idLd = int.tryParse(json['id_ld']) ?? 0;
    idItemDocFiscal = int.tryParse(json['id_item_doc_fiscal']) ?? 0;
    numDocFiscal = int.tryParse(json['num_doc_fiscal']) ?? 0;
    denominacaoProduto = json['denominacao_produto'];
    idDocumentoFiscal = int.tryParse(json['id_documento_fiscal']) ?? 0;
    qtde = int.tryParse(json['qtde']) ?? 0;
    this.valorVenda = json['valor_venda'] != null
        ? double.parse(
            json['valor_venda'].toString(),
          )
        : 0.0;
    this.custoAdm = json['custo_adm'] != null
        ? double.parse(
            json['custo_adm'].toString(),
          )
        : 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_ld'] = this.idLd;
    data['id_item_doc_fiscal'] = this.idItemDocFiscal;
    data['num_doc_fiscal'] = this.numDocFiscal;
    data['denominacao_produto'] = this.denominacaoProduto.toString();
    data['id_documento_fiscal'] = this.idDocumentoFiscal;
    data['qtde'] = this.qtde;
    data['valor_venda'] = this.valorVenda;
    data['custo_adm'] = this.custoAdm;

    return data;
  }
}
