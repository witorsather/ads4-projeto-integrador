import 'package:gpp/src/models/asteca/asteca_model.dart';
import 'package:gpp/src/models/pedido_entrada_model.dart';
import 'package:gpp/src/models/pedido_saida_model.dart';

class DashboardModel {
  int? totalPedidoSaida;
  int? totalPedidoEntrada;
  int? totalAsteca;
  List<PedidoSaidaModel>? pedidosSaida;
  List<PedidoEntradaModel>? pedidosEntrada;
  List<AstecaModel>? astecas;
  DashboardModel(
      {this.totalPedidoSaida, this.totalPedidoEntrada, this.totalAsteca});

  DashboardModel.fromJson(Map<String, dynamic> json) {
    totalPedidoSaida = json['total_pedido_saida'];
    totalPedidoEntrada = json['total_pedido_entrada'];
    totalAsteca = json['total_asteca'];
    pedidosSaida = json['pedidos_saida'] != null
        ? json['pedidos_saida'].map<PedidoSaidaModel>((data) {
            return PedidoSaidaModel.fromJson(data);
          }).toList()
        : null;
    pedidosEntrada = json['pedidos_entrada'] != null
        ? json['pedidos_entrada'].map<PedidoEntradaModel>((data) {
            return PedidoEntradaModel.fromJson(data);
          }).toList()
        : null;
    astecas = json['astecas'] != null
        ? json['astecas'].map<AstecaModel>((data) {
            return AstecaModel.fromJson(data);
          }).toList()
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_pedido_saida'] = this.totalPedidoSaida;
    data['total_pedido_entrada'] = this.totalPedidoEntrada;
    data['total_asteca'] = this.totalAsteca;
    return data;
  }
}
