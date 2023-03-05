import 'package:gpp/src/models/funcionario_model.dart';
import 'package:gpp/src/models/movimento_estoque/tipo_movimento_estoque_model.dart';
import 'package:gpp/src/models/pecas_model/pecas_estoque_model.dart';

class MovimentoEstoqueModel {
  int? id_movimento_estoque;
  int? id_tipo_movimento_estoque;
  int? id_pedido_saida;
  int? id_pedido_entrada;
  int? id_peca_estoque;
  DateTime? data_movimento;
  int? id_funcionario;
  int? qtd_movimento;
  int? saldo_disponivel;
  int? saldo_reservado;
  int? saldo_transferencia;
  int? saldo_total_peca;
  int? saldo_box;
  int? id_ajuste_estoque;
  int? id_inventario;

  TipoMovimentoEstoqueModel? tipoMovimentoEstoque;
  PecasEstoqueModel? pecasEstoque;
  FuncionarioModel? funcionario;

  MovimentoEstoqueModel({
    this.id_movimento_estoque,
    this.id_tipo_movimento_estoque,
    this.id_pedido_saida,
    this.id_pedido_entrada,
    this.id_peca_estoque,
    this.data_movimento,
    this.id_funcionario,
    this.qtd_movimento,
    this.saldo_disponivel,
    this.saldo_reservado,
    this.saldo_transferencia,
    this.saldo_total_peca,
    this.saldo_box,
    this.tipoMovimentoEstoque,
    this.pecasEstoque,
    this.funcionario,
    this.id_ajuste_estoque,
    this.id_inventario,
  });

  factory MovimentoEstoqueModel.fromJson(Map<String, dynamic> json) {
    return MovimentoEstoqueModel(
      id_movimento_estoque: json['id_movimento_estoque'],
      id_tipo_movimento_estoque: json['id_tipo_movimento_estoque'],
      id_pedido_saida: json['id_pedido_saida'] != null ? json['id_pedido_saida'] : null,
      id_pedido_entrada: json['id_pedido_entrada'] != null ? json['id_pedido_entrada'] : null,
      id_peca_estoque: json['id_peca_estoque'],
      data_movimento: json['data_movimento'] != null ? DateTime.parse(json['data_movimento']) : null,
      id_funcionario: json['id_funcionario'],
      qtd_movimento: json['qtd_movimento'],
      saldo_disponivel: json['saldo_disponivel'],
      saldo_reservado: json['saldo_reservado'],
      saldo_transferencia: json['saldo_transferencia'],
      saldo_total_peca: json['saldo_total_peca'],
      saldo_box: json['saldo_box'],
      id_ajuste_estoque: json['id_ajuste_estoque'],
      id_inventario: json['id_inventario'],
      tipoMovimentoEstoque:
          json['tipo_movimento_estoque'] != null ? TipoMovimentoEstoqueModel.fromJson(json['tipo_movimento_estoque']) : null,
      pecasEstoque: json['peca_estoque'] != null ? PecasEstoqueModel.fromJson(json['peca_estoque']) : null,
      funcionario: json['funcionario'] != null ? FuncionarioModel.fromJson(json['funcionario']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id_movimento_estoque'] = this.id_movimento_estoque;
    data['id_tipo_movimento_estoque'] = this.id_tipo_movimento_estoque;
    data['id_pedido_saida'] = this.id_pedido_saida;
    data['id_pedido_entrada'] = this.id_pedido_entrada;
    data['id_peca_estoque'] = this.id_peca_estoque;
    data['data_movimento'] = this.data_movimento;
    data['id_funcionario'] = this.id_funcionario;
    data['qtd_movimento'] = this.qtd_movimento;
    data['saldo_disponivel'] = this.saldo_disponivel;
    data['saldo_reservado'] = this.saldo_reservado;
    data['saldo_transferencia'] = this.saldo_transferencia;
    data['saldo_total_peca'] = this.saldo_total_peca;
    data['saldo_box'] = this.saldo_box;
    data['id_ajuste_estoque'] = this.id_ajuste_estoque;
    data['id_inventario'] = this.id_inventario;
    data['tipo_movimento_estoque'] = this.tipoMovimentoEstoque != null ? tipoMovimentoEstoque!.toJson() : null;
    // data['peca_estoque'] = this.pecasEstoque != null ? pecasEstoque!.toJson() : null;
    // data['funcionario'] = this.funcionario != null ? funcionario!.toJson() : null;

    return data;
  }
}
