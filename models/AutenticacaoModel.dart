class AutenticacaoModel {
  String? id;
  String? senha;
  String? tokenAcesso;

  AutenticacaoModel({
    this.id,
    this.senha,
    this.tokenAcesso,
  });

  factory AutenticacaoModel.fromJson(Map<String, dynamic> json) {
    return AutenticacaoModel(
        id: json['id'].toString(), tokenAcesso: json['access_token']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['senha'] = this.senha;
    return data;
  }
}
