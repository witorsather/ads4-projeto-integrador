import 'package:gpp/src/models/asteca/asteca_model.dart';
import 'package:gpp/src/models/filial/cliente_filial_model.dart';
import 'package:gpp/src/models/item_mapa_carga_model.dart';
import 'package:gpp/src/models/item_pedido_saida_model.dart';
import 'package:gpp/src/models/cliente_model.dart';
import 'package:gpp/src/models/funcionario_model.dart';
import 'package:gpp/src/models/item_solicitacao_criacao_asteca_model.dart';
import 'package:gpp/src/models/solicitacao_os/imagem_os_model.dart';

class SolicitacaoAstecaModel {
  int? idSolicitacaoAsteca;
  String? cpfCnpj;
  int? filial_registro;
  int? numDocFiscal;
  String? serieDocFiscal;
  DateTime? dataEmissao;
  int? situacao;
  double? valorTotal = 0.0;
  bool? verificaEstoque;
  ClienteFilialModel? clienteFilial;
  ItemMapaCargaModel? itemMapaCarga;
  AstecaModel? asteca;
  FuncionarioModel? funcionario;
  ClienteModel? cliente;
  List<ItemSolicitacaoCriacaoAstecaModel>? itemsSolicitcaoAsteca;
  List<ImagemOSModel>? imagens;

  SolicitacaoAstecaModel(
      {this.idSolicitacaoAsteca,
      this.cpfCnpj,
      this.filial_registro,
      this.numDocFiscal,
      this.serieDocFiscal,
      this.dataEmissao,
      this.situacao,
      this.valorTotal,
      this.asteca,
      this.funcionario,
      this.cliente,
      this.itemsSolicitcaoAsteca,
      this.verificaEstoque,
      this.itemMapaCarga,
      this.imagens});

  factory SolicitacaoAstecaModel.fromJson(Map<String, dynamic> json) {
    return SolicitacaoAstecaModel(
        idSolicitacaoAsteca: json['idAsteca'],
        cpfCnpj: json['cpf_cnpj'],
        filial_registro: json['filial_registro'],
        numDocFiscal: json['num_doc_fiscal'],
        serieDocFiscal: json['serie_doc_fiscal'],
        dataEmissao: json['serie_doc_fiscal'] != null
            ? DateTime.parse(json['data_emissao'])
            : null,
        situacao: json['situacao'],
        valorTotal: double.tryParse(json['valor_total'].toString()),
        funcionario: json['funcionario'] != null
            ? FuncionarioModel.fromJson(json['funcionario'])
            : null,
        cliente: json['cliente'] != null
            ? ClienteModel.fromJson(json['cliente'])
            : null,
        asteca: json['asteca'] != null
            ? AstecaModel.fromJson(json['asteca'])
            : null,
        itemsSolicitcaoAsteca: json['items_pedido_saida'] != null
            ? json['items_pedido_saida'].map<ItemPedidoSaidaModel>((data) {
                return ItemPedidoSaidaModel.fromJson(data);
              }).toList()
            : null,
        verificaEstoque:
            json['verifica_estoque'] != null ? json['verifica_estoque'] : null,
        itemMapaCarga: json['item_mapa_carga'] != null
            ? ItemMapaCargaModel.fromJson(json['item_mapa_carga'])
            : null,
        imagens: json['imagens'] != null
            ? json['imagens'].map<ImagemOSModel>((data) {
                return ImagemOSModel.fromJson(data);
              }).toLIst()
            : null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['idAsteca'] = idSolicitacaoAsteca;
    data['cpf_cnpj'] = cpfCnpj;
    data['filial_registro'] = filial_registro;
    data['num_doc_fiscal'] = numDocFiscal;
    data['serie_doc_fiscal'] = serieDocFiscal;
    data['situacao'] = situacao;
    data['valor_total'] = valorTotal;
    data['id_asteca'] = asteca != null ? asteca!.idAsteca : null;
    data['id_funcionario'] =
        funcionario?.idFuncionario != null ? funcionario!.idFuncionario : null;
    data['cliente'] = cliente != null ? cliente!.toJson() : null;

    data['items_pedido_saida'] = itemsSolicitcaoAsteca != null
        ? itemsSolicitcaoAsteca!.map((e) => e.toJson()).toList()
        : null;
    data['imagens'] =
        imagens != null ? imagens!.map((e) => e.toJson()).toList() : null;
    return data;
  }
}
