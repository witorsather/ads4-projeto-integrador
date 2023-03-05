import 'package:gpp/src/models/asteca/asteca_model.dart';
import 'package:gpp/src/models/filial/cliente_filial_model.dart';
import 'package:gpp/src/models/item_mapa_carga_model.dart';
import 'package:gpp/src/models/item_pedido_saida_model.dart';
import 'package:gpp/src/models/cliente_model.dart';
import 'package:gpp/src/models/funcionario_model.dart';
import 'package:gpp/src/models/pedido_saida_evento_model.dart';

class PedidoSaidaModel {
  int? idPedidoSaida;
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
  List<ItemPedidoSaidaModel>? itemsPedidoSaida;
  List<PedidoSaidaEventoModel>? pedidoSaidaEvento;
  PedidoSaidaModel(
      {this.idPedidoSaida,
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
      this.itemsPedidoSaida,
      this.pedidoSaidaEvento,
      this.verificaEstoque,
      this.itemMapaCarga});

  factory PedidoSaidaModel.fromJson(Map<String, dynamic> json) {
    return PedidoSaidaModel(
        idPedidoSaida: json['id_pedido_saida'],
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
        itemsPedidoSaida: json['items_pedido_saida'] != null
            ? json['items_pedido_saida'].map<ItemPedidoSaidaModel>((data) {
                return ItemPedidoSaidaModel.fromJson(data);
              }).toList()
            : null,
        pedidoSaidaEvento: json['pedido_saida_evento'] != null
            ? json['pedido_saida_evento'].map<PedidoSaidaEventoModel>((data) {
                return PedidoSaidaEventoModel.fromJson(data);
              }).toList()
            : null,
        verificaEstoque:
            json['verifica_estoque'] != null ? json['verifica_estoque'] : null,
        itemMapaCarga: json['item_mapa_carga'] != null
            ? ItemMapaCargaModel.fromJson(json['item_mapa_carga'])
            : null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_pedido_saida'] = idPedidoSaida;
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

    data['items_pedido_saida'] = itemsPedidoSaida != null
        ? itemsPedidoSaida!.map((e) => e.toJson()).toList()
        : null;
    data['pedido_saida_evento'] = pedidoSaidaEvento != null
        ? pedidoSaidaEvento!.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}
