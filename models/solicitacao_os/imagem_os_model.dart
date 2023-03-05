import 'dart:convert';

class ImagemOSModel {
  int? idImagem;
  String? nome;
  String? base64;
  String? url;

  ImagemOSModel({
    this.idImagem,
    this.nome,
    this.base64,
    this.url,
  });

  ImagemOSModel.fromJson(Map<String, dynamic> json) {
    this.idImagem = json['id_solicitacao_os_imagem'];
    this.nome = json['nome_imagem'];
    this.base64 = json['base64'];
    this.url = json['url_imagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['id_solicitacao_os_imagem'] = this.idImagem;
    data['nome_imagem'] = this.nome;
    data['base64'] = jsonEncode(this.base64);

    return data;
  }
}
