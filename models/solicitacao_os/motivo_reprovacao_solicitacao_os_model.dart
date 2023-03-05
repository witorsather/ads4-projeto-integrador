class MotivoReprovacaoSolicitacaoOsModel {
  int? idMotivoReprovacaoSolicitacaoOs;
  String? descricaoMotivo;

  MotivoReprovacaoSolicitacaoOsModel(
      {this.idMotivoReprovacaoSolicitacaoOs, this.descricaoMotivo});

  factory MotivoReprovacaoSolicitacaoOsModel.fromJson(
      Map<String, dynamic> json) {
    return MotivoReprovacaoSolicitacaoOsModel(
      idMotivoReprovacaoSolicitacaoOs:
          json['id_gpp_solicitacao_os_motivo_reprovacao'],
      descricaoMotivo: json['descricao_motivo'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_gpp_solicitacao_os_motivo_reprovacao'] =
        idMotivoReprovacaoSolicitacaoOs;
    data['descricao_motivo'];
    return data;
  }
}
