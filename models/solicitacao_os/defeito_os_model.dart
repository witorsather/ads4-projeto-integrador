class DefeitoOSModel {
  String? idDefeito;
  String? descricao;

  DefeitoOSModel({this.idDefeito, this.descricao});

  DefeitoOSModel.fromJson(Map<String, dynamic> json) {
    this.idDefeito = json['id_tipo_defeito'];
    this.descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();

    data['id_tipo_defeito'] = this.idDefeito;
    data['descricao'] = this.descricao;

    return data;
  }
}
