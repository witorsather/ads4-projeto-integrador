import 'package:gpp/src/models/box_enderecamento_model.dart';

class PecaEstoqueModel {
  int idPecaEstoque;
  int saldoDisponivel;
  int saldoReservado;
  int? quantidadeMinima;
  int? quantidadeTransferencia;
  String endereco;
  bool selecionado = false;
  BoxEnderecamentoModel? box;

  PecaEstoqueModel(
      {required this.idPecaEstoque,
      required this.saldoDisponivel,
      required this.saldoReservado,
      this.quantidadeTransferencia,
      required this.endereco,
      this.quantidadeMinima,
      this.box});

  factory PecaEstoqueModel.fromJson(Map<String, dynamic> json) {
    return PecaEstoqueModel(
      idPecaEstoque: json['id_peca_estoque'],
      saldoDisponivel: json['saldo_disponivel'],
      saldoReservado: json['saldo_reservado'],
      quantidadeMinima:
          json['quantidade_minima'] != null ? json['quantidade_minima'] : null,
      quantidadeTransferencia: json['quantidade_transferencia'] != null
          ? json['quantidade_transferencia']
          : null,
      endereco: json['endereco'],
      box: json['box'] == null
          ? null
          : BoxEnderecamentoModel.fromJson(json['box']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_peca_estoque'] = idPecaEstoque;
    data['saldo_disponivel'] = saldoDisponivel;
    data['saldo_reservado'] = saldoReservado;
    data['box'] = this.box != null ? this.box! : null;
    return data;
  }
}
