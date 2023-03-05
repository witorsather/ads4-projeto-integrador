import 'package:gpp/src/enums/solicitacao_os_categoria_troca_enum.dart';
import 'package:gpp/src/enums/solicitacao_os_complemento_enum.dart';
import 'package:gpp/src/models/solicitacao_os/digitalizacao_os_model.dart';
import 'package:gpp/src/models/solicitacao_os/imagem_os_model.dart';
import 'package:gpp/src/models/solicitacao_os/item_solicitacao_os_model.dart';
import 'package:gpp/src/models/solicitacao_os/motivo_reprovacao_solicitacao_os_model.dart';

class SolicitacaoOSModel {
  int? idSolicitacao;
  String? idOrdemServico;
  int? filialOrigem;
  DateTime? dataEmissao;
  String? filialDestino;
  String? filialDestinoRetransf;
  int? situacao;
  int? idMotivoReprovacao;
  String? observacaoReprovacao;

  SolicitacaoOSComplementoEnum? complemento;
  String? crm;
  SolicitacaoOSCategoriaTrocaEnum? categoriaTroca;

  int? filialSaidaVenda;
  int? numDocFiscalVenda;
  String? serieDocFiscalVenda;
  DateTime? dataEmissaoVenda;
  int? filialSaidaTroca;
  int? numDocFiscalTroca;
  String? serieDocFiscalTroca;
  DateTime? dataEmissaoTroca;

  ItemSolicitacaoOSModel? itemSolicitacao;

  MotivoReprovacaoSolicitacaoOsModel? motivoReprovacaoSolicitacaoOs;

  List<ImagemOSModel>? imagens;

  List<DigitalizacaoOSModel>? digitalizacoes;

  SolicitacaoOSModel({
    this.idSolicitacao,
    this.idOrdemServico,
    this.filialOrigem,
    this.dataEmissao,
    this.filialDestino,
    this.filialDestinoRetransf,
    this.situacao,
    this.complemento,
    this.crm,
    this.categoriaTroca,
    this.filialSaidaVenda,
    this.numDocFiscalVenda,
    this.serieDocFiscalVenda,
    this.dataEmissaoVenda,
    this.filialSaidaTroca,
    this.numDocFiscalTroca,
    this.serieDocFiscalTroca,
    this.dataEmissaoTroca,
    this.itemSolicitacao,
    this.imagens,
    this.digitalizacoes,
    this.motivoReprovacaoSolicitacaoOs,
    this.observacaoReprovacao,
    this.idMotivoReprovacao,
  });

  SolicitacaoOSModel.fromJson(Map<String, dynamic> json) {
    this.idSolicitacao = json['id_solicitacao_os'];
    this.idOrdemServico = json['id_ord_servico'];
    this.filialOrigem = json['filial_origem'];
    this.dataEmissao = json['data_emissao'] != null
        ? DateTime.parse(json['data_emissao'])
        : null;
    this.filialDestino = json['filial_destino'];
    this.filialDestinoRetransf = json['filial_destino_retransf'];
    this.situacao = json['situacao'];
    this.complemento = json['complemento_os'] != null
        ? SolicitacaoOSComplementoEnum.values.firstWhere(
            (complemento) => complemento.value == json['complemento_os'])
        : null;
    this.crm = json['crm'];
    this.categoriaTroca = json['categoria_os'] != null
        ? SolicitacaoOSCategoriaTrocaEnum.values
            .firstWhere((categoria) => categoria.value == json['categoria_os'])
        : null;
    this.filialSaidaVenda = json['filial_saida_venda'];
    this.numDocFiscalVenda = json['num_doc_fiscal_venda'];
    this.serieDocFiscalVenda = json['serie_doc_fiscal_venda'];
    this.dataEmissaoVenda = json['data_emissao_venda'] != null
        ? DateTime.parse(json['data_emissao_venda'])
        : null;
    this.filialSaidaTroca = json['filial_saida_troca'];
    this.numDocFiscalTroca = json['num_doc_fiscal_troca'];
    this.serieDocFiscalTroca = json['serie_doc_fiscal_troca'];
    this.dataEmissaoTroca = json['data_emissao_troca'] != null
        ? DateTime.parse(json['data_emissao_troca'])
        : null;
    this.itemSolicitacao = json['item_solicitacao_ordem_servico'] != null
        ? ItemSolicitacaoOSModel.fromJson(
            json['item_solicitacao_ordem_servico'])
        : null;
    this.imagens = json['imagem_solicitacao_ordem_servico'] != null
        ? json['imagem_solicitacao_ordem_servico'].map<ImagemOSModel>((imagem) {
            return ImagemOSModel.fromJson(imagem);
          }).toList()
        : null;
    this.digitalizacoes =
        json['digitalizacao_solicitacao_ordem_servico'] != null
            ? json['digitalizacao_solicitacao_ordem_servico']
                .map<DigitalizacaoOSModel>((digitalizacao) {
                return DigitalizacaoOSModel.fromJson(digitalizacao);
              }).toList()
            : null;
    this.motivoReprovacaoSolicitacaoOs =
        json['motivo_reprovacao_solicitacao_os'] != null
            ? MotivoReprovacaoSolicitacaoOsModel.fromJson(
                json['motivo_reprovacao_solicitacao_os'])
            : null;
    this.observacaoReprovacao = json['observacao_reprovacao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['id_solicitacao_os'] = this.idSolicitacao;
    data['id_ord_servico'] = this.idOrdemServico;
    data['filial_origem'] = this.filialOrigem;
    data['data_emissao'] =
        this.dataEmissao != null ? this.dataEmissao.toString() : null;
    data['filial_destino'] = this.filialDestino;
    data['filial_destino_retransf'] = this.filialDestinoRetransf;
    data['situacao'] = this.situacao;
    data['complemento_os'] = this.complemento?.value;
    data['crm'] = this.crm;
    data['categoria_os'] = this.categoriaTroca?.value;
    data['filial_saida_venda'] = this.filialSaidaVenda;
    data['num_doc_fiscal_venda'] = this.numDocFiscalVenda;
    data['serie_doc_fiscal_venda'] = this.serieDocFiscalVenda;
    data['data_emissao_venda'] =
        this.dataEmissaoVenda != null ? this.dataEmissaoVenda.toString() : null;
    data['filial_saida_troca'] = this.filialSaidaTroca;
    data['num_doc_fiscal_troca'] = this.numDocFiscalTroca;
    data['serie_doc_fiscal_troca'] = this.serieDocFiscalTroca;
    data['data_emissao_troca'] =
        this.dataEmissaoTroca != null ? this.dataEmissaoTroca.toString() : null;
    data['item_solicitacao_ordem_servico'] =
        this.itemSolicitacao != null ? this.itemSolicitacao!.toJson() : null;
    data['imagem_solicitacao_ordem_servico'] = this.imagens != null
        ? this.imagens!.map((imagem) => imagem.toJson()).toList()
        : [];
    data['digitalizacao_solicitacao_ordem_servico'] =
        this.digitalizacoes != null
            ? this
                .digitalizacoes!
                .map((digitalizacao) => digitalizacao.toJson())
                .toList()
            : [];
    data['id_motivo_reprovacao'] = this.idMotivoReprovacao;

    data['observacao_reprovacao'] = this.observacaoReprovacao;

    return data;
  }
}
