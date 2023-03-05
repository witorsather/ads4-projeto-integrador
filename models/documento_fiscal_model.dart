import 'package:gpp/src/models/cliente_model.dart';
import 'package:gpp/src/models/filial/cliente_filial_model.dart';
import 'package:gpp/src/models/item_doc_fiscal_model.dart';
import 'package:gpp/src/models/produto/fornecedor_model.dart';

class DocumentoFiscalModel {
  int? idDocumentoFiscal;
  int? idFilialSaida;
  int? idFilialVenda;
  String? nome;
  String? cpfCnpj;
  int? numDocFiscal;
  String? serieDocFiscal;
  DateTime? dataEmissao;
  ItemDocFiscalModel? itemDocFiscal;
  ClienteModel? cliente;
  ClienteFilialModel? clienteFilial;
  String? descricao;
  String? fornecedor;
  DocumentoFiscalModel(
      {this.idDocumentoFiscal,
      this.idFilialSaida,
      this.idFilialVenda,
      this.nome,
      this.cpfCnpj,
      this.numDocFiscal,
      this.serieDocFiscal,
      this.dataEmissao,
      this.itemDocFiscal,
      this.cliente,
      this.clienteFilial,
      this.descricao,
      this.fornecedor});

  factory DocumentoFiscalModel.fromJson(Map<String, dynamic> json) {
    return DocumentoFiscalModel(
      idDocumentoFiscal: json['id_documento_fiscal'] != null
          ? int.parse(
              json['id_documento_fiscal'].toString(),
            )
          : 0,
      idFilialSaida: json['id_filial_saida'] != null
          ? int.parse(
              json['id_filial_saida'].toString(),
            )
          : 0,
      idFilialVenda: json['id_filial_venda'] != null
          ? int.parse(
              json['id_filial_venda'].toString(),
            )
          : 0,
      nome: json['nome'],
      cpfCnpj: json['cpf_cnpj'],
      numDocFiscal: json['num_doc_fiscal'] != null
          ? int.parse(
              json['num_doc_fiscal'].toString(),
            )
          : 0,
      serieDocFiscal: json['serie_doc_fiscal'],
      dataEmissao: DateTime.parse(json['data_emissao']),
      itemDocFiscal: json['item_doc_fiscal'] != null
          ? new ItemDocFiscalModel.fromJson(json['item_doc_fiscal'])
          : null,
      cliente: json['cliente'] != null
          ? ClienteModel.fromJson(json['cliente'])
          : null,
      clienteFilial: json['cliente_filial'] != null
          ? ClienteFilialModel.fromJson(json['cliente_filial'])
          : null,
      descricao: json['denominacao_produto'],
      fornecedor: json['nome'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_documento_fiscal'] = this.idDocumentoFiscal;
    data['id_filial_saida'] = this.idFilialSaida;
    data['id_filial_venda'] = this.idFilialVenda;
    data['nome'] = this.nome;
    data['cpf_cnpj'] = this.cpfCnpj;
    data['num_doc_fiscal'] = this.numDocFiscal;
    data['serie_doc_fiscal'] = this.serieDocFiscal;
    data['data_emissao'] = this.dataEmissao.toString();
    data['denominacao_produto'] = this.descricao.toString();
    data['nome'] = this.fornecedor.toString();
    if (this.itemDocFiscal != null) {
      data['item_doc_fiscal'] = this.itemDocFiscal!.toJson();
    }
    return data;
  }
}
