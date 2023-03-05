import 'dart:convert';

class DigitalizacaoOSModel {
  int? idDigitalizacao;
  String? descricao;
  String? nomeImagem;
  String? base64;
  String? url;

  DigitalizacaoOSModel({
    this.idDigitalizacao,
    this.descricao,
    this.nomeImagem,
    this.base64,
    this.url,
  });

  DigitalizacaoOSModel.fromJson(Map<String, dynamic> json) {
    this.idDigitalizacao = json['id_digitalizacao_os_imagem'];
    this.descricao = json['descricao'];
    this.nomeImagem = json['nome_imagem'];
    this.base64 = json['base64'];
    this.url = json['url_imagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['id_digitializacao_solicitacao_os'] = this.idDigitalizacao;
    data['descricao'] = this.descricao;
    data['nome_imagem'] = this.nomeImagem;
    data['base64'] = jsonEncode(this.base64);

    return data;
  }
}
