import 'package:gpp/src/models/evento_status_model.dart';
import 'package:gpp/src/models/funcionario_model.dart';

class MapaCargaEventoModel {
  int? idMapaCargaEvento;
  DateTime? dataEvento;
  int? idMapaCarga;
  int? idEventoStatus;
  String? idFuncionario;
  FuncionarioModel? funcionario;
  EventoStatusModel? eventoStatus;

  MapaCargaEventoModel(
      {this.idMapaCargaEvento,
      this.dataEvento,
      this.idMapaCarga,
      this.idEventoStatus,
      this.idFuncionario,
      this.funcionario,
      this.eventoStatus});

  MapaCargaEventoModel.fromJson(Map<String, dynamic> json) {
    idMapaCargaEvento = json['id_mapa_carga_evento'];
    dataEvento = json['data_evento'] != null
        ? DateTime.parse(json['data_evento'])
        : null;
    idMapaCarga = json['id_mapa_carga'];
    idEventoStatus = json['id_evento_status'];
    idFuncionario = json['id_funcionario'];
    funcionario = json['funcionario'] != null
        ? FuncionarioModel.fromJson(json['funcionario'])
        : null;
    eventoStatus = json['evento_status'] != null
        ? EventoStatusModel.fromJson(json['evento_status'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_mapa_carga_evento'] = this.idMapaCargaEvento;
    data['data_evento'] = this.dataEvento;
    data['id_mapa_carga'] = this.idMapaCarga;
    data['id_evento_status'] = this.idEventoStatus;
    data['id_funcionario'] = this.idFuncionario;
    return data;
  }
}
