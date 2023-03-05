import 'package:gpp/src/models/mapa_carga_model.dart';
import 'package:gpp/src/models/pedido_saida_model.dart';

class ItemMapaCargaModel {
  int? idItemMapaCarga;
  int? idMapaCarga;
  int? idPedidoSaida;
  PedidoSaidaModel? pedidoSaida;
  MapaCargaModel? mapaCarga;

  ItemMapaCargaModel(
      {this.idItemMapaCarga,
      this.idMapaCarga,
      this.idPedidoSaida,
      this.pedidoSaida,
      this.mapaCarga});

  ItemMapaCargaModel.fromJson(Map<String, dynamic> json) {
    idItemMapaCarga = json['id_item_mapa_carga'];
    idMapaCarga = json['id_mapa_carga'];
    idPedidoSaida = json['id_pedido_saida'];
    pedidoSaida = json['pedido_saida'] != null
        ? PedidoSaidaModel.fromJson(json['pedido_saida'])
        : null;
    mapaCarga = json['mapa_carga'] != null
        ? MapaCargaModel.fromJson(json['mapa_carga'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_item_mapa_carga'] = this.idItemMapaCarga;
    data['id_mapa_carga'] = this.idMapaCarga;
    data['id_pedido_saida'] = this.idPedidoSaida;
    data['pedido_saida'] =
        this.pedidoSaida != null ? this.pedidoSaida!.toJson() : null;
    return data;
  }
}
