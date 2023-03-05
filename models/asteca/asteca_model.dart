import 'package:gpp/src/models/pedido_entrada_model.dart';
import 'package:gpp/src/models/pedido_saida_model.dart';
import 'package:gpp/src/models/asteca/asteca_end_cliente_model.dart';
import 'package:gpp/src/models/asteca/asteca_motivo_model.dart';
import 'package:gpp/src/models/asteca/asteca_pendencia_model.dart';

import 'package:gpp/src/models/documento_fiscal_model.dart';
import 'package:gpp/src/models/funcionario_model.dart';
import 'package:gpp/src/models/produto/comp_est_prod_model.dart';

class AstecaModel {
  int? idAsteca;
  AstecaMotivoModel? astecaMotivo;
  int? tipoAsteca; //Defini se é cliente ou estoque
  int? idFilialRegistro;
  String? observacao;
  String? defeitoEstadoProd;
  DateTime? dataEmissao;
  AstecaEndClienteModel? astecaEndCliente;
  DocumentoFiscalModel? documentoFiscal;
  List<CompEstProdModel>? compEstProd;
  //List<ProdutoModel>? produto;
  FuncionarioModel? funcionario;
  PedidoSaidaModel? pedidoSaida;
  PedidoEntradaModel? pedidoEntrada;

  List<AstecaPendenciaModel>? astecaPendencias;

  AstecaModel(
      {this.idAsteca,
      this.tipoAsteca,
      this.idFilialRegistro,
      this.observacao,
      this.defeitoEstadoProd,
      this.dataEmissao,
      this.astecaPendencias,
      this.astecaEndCliente,
      this.astecaMotivo,
      this.documentoFiscal,
      this.compEstProd,
      this.funcionario,
      this.pedidoSaida,
      this.pedidoEntrada});

  factory AstecaModel.fromJson(Map<String, dynamic> json) {
    return AstecaModel(
        idAsteca: json['id_asteca'],
        tipoAsteca: json['tipo_asteca'],
        idFilialRegistro: json['id_filial_registro'],
        observacao: json['observacao'],
        defeitoEstadoProd: json['defeito_estado_prod'],
        dataEmissao: json['data_emissao'] != null
            ? DateTime.parse(json['data_emissao'])
            : null,
        astecaEndCliente: json['asteca_end_cliente'] != null
            ? AstecaEndClienteModel.fromJson(json['asteca_end_cliente'])
            : null,
        astecaMotivo: json['asteca_motivo'] != null
            ? AstecaMotivoModel.fromJson(json['asteca_motivo'])
            : null,
        documentoFiscal: json['documento_fiscal'] != null
            ? DocumentoFiscalModel.fromJson(json['documento_fiscal'])
            : null,
        compEstProd: json['comp_est_prod'] != null
            ? json['comp_est_prod'].map<CompEstProdModel>((data) {
                return CompEstProdModel.fromJson(data);
              }).toList()
            : null,
        // produto: json['produto'] != null
        //     ? json['produto'].map<ProdutoModel>((data) {
        //         return ProdutoModel.fromJson(data);
        //       }).toList()
        //     : null,
        funcionario: json['funcionario'] != null
            ? FuncionarioModel.fromJson(json['funcionario'])
            : null,
        astecaPendencias: json['asteca_pendencias'] != null
            ? json['asteca_pendencias'].map<AstecaPendenciaModel>((data) {
                return AstecaPendenciaModel.fromJson(data);
              }).toList()
            : null,
        pedidoSaida: json['pedido_saida'] != null
            ? PedidoSaidaModel.fromJson(json['pedido_saida'])
            : null,
        pedidoEntrada: json['pedido_entrada'] != null
            ? PedidoEntradaModel.fromJson(json['pedido_entrada'])
            : null);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_asteca'] = this.idAsteca;
    data['tipo_asteca'] = this.tipoAsteca;
    data['id_filial_registro'] = this.idFilialRegistro;
    data['observacao'] = this.observacao;
    data['defeito_estado_prod'] = this.defeitoEstadoProd;
    data['data_emissao'] = this.dataEmissao.toString();
    if (this.astecaEndCliente != null) {
      data['asteca_end_cliente'] = this.astecaEndCliente!.toJson();
    }
    data['asteca_motivo'] = this.astecaMotivo;
    data['documento_fiscal'] = this.documentoFiscal;
    data['comp_est_prod'] = this.compEstProd != null
        ? this.compEstProd!.map((e) => e.toJson()).toList()
        : null;
    if (this.funcionario != null) {
      data['funcionario'] = this.funcionario;
    }
    data['pedido_saida'] = this.pedidoSaida;
    return data;
  }
}
