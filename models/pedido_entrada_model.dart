import 'package:gpp/src/models/asteca/asteca_model.dart';
import 'package:gpp/src/models/item_pedido_entrada_model.dart';
import 'package:gpp/src/models/filial/cliente_filial_model.dart';
import 'package:gpp/src/models/funcionario_model.dart';

class PedidoEntradaModel {
  int? idPedidoEntrada;
  AstecaModel? asteca;
  DateTime? dataEmissao;
  int? situacao;
  double? valorTotal = 0.0;
  //Falta objeto do movimento de entrada
  int? id_movimento_entrada;
  // ItemMovimentoEntradaModel? itemMovimentoEntradaModel;

  List<ItemPedidoEntradaModel>? itensPedidoEntrada;
  FuncionarioModel? funcionario;
  int? filial_registro;
  ClienteFilialModel? clienteFilial;
  int? idFornecedor;

  PedidoEntradaModel({
    this.idPedidoEntrada,
    this.asteca,
    this.dataEmissao,
    this.situacao,
    this.valorTotal,
    this.funcionario,
    this.itensPedidoEntrada,
    this.filial_registro,
    this.id_movimento_entrada,
    // this.itemMovimentoEntradaModel,
    this.clienteFilial,
    this.idFornecedor,
  });

  factory PedidoEntradaModel.fromJson(Map<String, dynamic> json) {
    return PedidoEntradaModel(
      idPedidoEntrada: json['id_pedido_entrada'],
      dataEmissao: json['data_emissao'] != null ? DateTime.parse(json['data_emissao']) : null,
      situacao: json['situacao'],
      valorTotal: double.tryParse(json['valor_total'].toString()),
      funcionario: json['funcionario'] != null ? FuncionarioModel.fromJson(json['funcionario']) : null,
      asteca: json['asteca'] != null ? AstecaModel.fromJson(json['asteca']) : null,
      itensPedidoEntrada: json['items_pedido_entrada'] != null
          ? json['items_pedido_entrada'].map<ItemPedidoEntradaModel>((data) {
              return ItemPedidoEntradaModel.fromJson(data);
            }).toList()
          : null,
      filial_registro: json['filial_registro'],
      id_movimento_entrada: json['id_movimento_entrada'],
      clienteFilial: json['cliente_filial'] != null ? ClienteFilialModel.fromJson(json['cliente_filial']) : null,
      idFornecedor: json['id_fornecedor'],
      // itemMovimentoEntradaModel: json['item_movimento_entrada'] != null ? ItemMovimentoEntradaModel.fromJson(json['item_movimento_entrada']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_pedido_entrada'] = idPedidoEntrada;
    data['situacao'] = situacao;
    data['valor_total'] = valorTotal;
    //data['data_emissao'] =
    //     dataEmissao != null ? dataEmissao!.toIso8601String() : null;
    data['asteca'] = asteca != null ? asteca!.toJson() : null;
    data['funcionario'] = funcionario != null ? funcionario!.toJson() : null;
    data['itens_pedido_entrada'] = itensPedidoEntrada != null ? itensPedidoEntrada!.map((e) => e.toJson()).toList() : null;
    data['id_fornecedor'] = idFornecedor;
    return data;
  }
}
