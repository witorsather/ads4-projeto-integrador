import 'package:gpp/src/models/evento_status_model.dart';

class InventarioEventoModel {
  int? id_inventario_evento;
  String? data_evento;
  int? id_evento_status;
  int? id_inventario;
  EventoStatusModel? eventoStatus;

  InventarioEventoModel({
    this.id_inventario_evento,
    this.data_evento,
    this.id_evento_status,
    this.id_inventario,
    this.eventoStatus,
  });

  factory InventarioEventoModel.fromJson(Map<String, dynamic> json) {
    return InventarioEventoModel(
      id_inventario_evento: json['id_inventario_evento'],
      data_evento: json['data_evento'],
      id_evento_status: json['id_evento_status'],
      id_inventario: json['id_inventario'],
      eventoStatus: json['evento_status'] != null ? EventoStatusModel.fromJson(json['evento_status']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['data_evento'] = this.data_evento;
    data['id_evento_status'] = this.id_evento_status;
    data['id_inventario'] = this.id_inventario;

    return data;
  }
}
