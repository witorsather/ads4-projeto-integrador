class EventoStatusModel {
  int? id_evento_status;
  String? descricao;
  String? mensagemPadrao;
  String? statusCor;

  EventoStatusModel({this.id_evento_status, this.descricao, this.mensagemPadrao, this.statusCor});

  EventoStatusModel.fromJson(Map<String, dynamic> json) {
    id_evento_status = json['id_evento_status'];
    descricao = json['descricao'];
    mensagemPadrao = json['mensagem_padrao'];
    statusCor = json['status_cor'] != null ? json['status_cor'] : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_evento_status'] = this.id_evento_status;
    data['descricao'] = this.descricao;
    data['mensagem_padrao'] = this.mensagemPadrao;
    data['status_cor'] = this.statusCor;
    return data;
  }
}
