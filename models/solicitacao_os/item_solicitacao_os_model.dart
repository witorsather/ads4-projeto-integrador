import 'package:gpp/src/models/solicitacao_os/checklist_os_model.dart';
import 'package:gpp/src/models/solicitacao_os/defeito_os_model.dart';

class ItemSolicitacaoOSModel {
  String? idProduto;
  String? nomeProduto;
  String? idDepartamento;
  String? idGrupo;
  String? idLd;
  String? idCor;
  String? estoque;
  String? numeroSerie;
  double? valor;
  String? observacao;

  List<DefeitoOSModel>? defeitos;
  List<ChecklistOSModel>? checklists;

  ItemSolicitacaoOSModel(
      {this.idProduto,
      this.nomeProduto,
      this.idDepartamento,
      this.idGrupo,
      this.idLd,
      this.idCor,
      this.estoque,
      this.numeroSerie,
      this.valor,
      this.defeitos,
      this.checklists,
      this.observacao});

  ItemSolicitacaoOSModel.fromJson(Map<String, dynamic> json) {
    this.idProduto = json['id_produto'];
    this.nomeProduto = json['nome_produto'];
    this.idDepartamento = json['id_departamento'];
    this.idGrupo = json['id_grupo'];
    this.idLd = json['id_ld'];
    this.idCor = json['id_cor'];
    this.estoque = json['estoque'];
    this.numeroSerie = json['numero_serie'];
    this.valor = json['valor'] != null
        ? double.parse(
            json['valor'].toString(),
          )
        : 0.0;
    this.observacao = json['observacao'];
    this.defeitos = json['defeito_solicitacao_ordem_servico'] != null
        ? json['defeito_solicitacao_ordem_servico'].map<DefeitoOSModel>((defeito) {
            return DefeitoOSModel.fromJson(defeito);
          }).toList()
        : [];
    this.checklists = json['checklist_solicitacao_ordem_servico'] != null
        ? json['checklist_solicitacao_ordem_servico'].map<ChecklistOSModel>((checklist) {
            return ChecklistOSModel.fromJson(checklist);
          }).toList()
        : [];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();

    data['id_produto'] = this.idProduto;
    data['nome_produto'] = this.nomeProduto;
    data['id_departamento'] = this.idDepartamento;
    data['id_grupo'] = this.idGrupo;
    data['id_ld'] = this.idLd;
    data['id_cor'] = this.idCor;
    data['estoque'] = this.estoque;
    data['numero_serie'] = this.numeroSerie;
    data['valor'] = this.valor;
    data['observacao'] = this.observacao;
    data['defeito_solicitacao_ordem_servico'] =
        this.defeitos != null ? this.defeitos!.map((defeito) => defeito.toJson()).toList() : [];
    data['checklist_solicitacao_ordem_servico'] =
        this.checklists != null ? this.checklists!.map((checklist) => checklist.toJson()).toList() : [];

    return data;
  }
}
