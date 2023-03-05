class CaminhaoModel {
  int? idCaminhao;
  String? placa;
  String? sigla_uf;

  CaminhaoModel({
    this.idCaminhao,
    this.placa,
    this.sigla_uf,
  });

  CaminhaoModel.fromJson(Map<String, dynamic> json) {
    idCaminhao = json['id_caminhao'];
    placa = json['placa'];
    sigla_uf = json['sigla_uf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_caminhao'] = this.idCaminhao;
    data['placa'] = this.placa;

    return data;
  }
}
