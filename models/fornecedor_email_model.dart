class FornecedorEmailModel {
  int? idFornecedorEmail;
  String? idFornecedor;
  String? eMail;

  FornecedorEmailModel({this.idFornecedorEmail, this.idFornecedor, this.eMail});

  FornecedorEmailModel.fromJson(Map<String, dynamic> json) {
    idFornecedorEmail = json['id_fornecedor_email'];
    idFornecedor = json['id_fornecedor'];
    eMail = json['e_mail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_fornecedor_email'] = this.idFornecedorEmail;
    data['id_fornecedor'] = this.idFornecedor;
    data['e_mail'] = this.eMail;
    return data;
  }
}
