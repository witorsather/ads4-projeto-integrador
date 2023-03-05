import 'package:gpp/src/models/funcionario_model.dart';
import 'package:gpp/src/models/evento_status_model.dart';

class PedidoSaidaEventoModel {
  DateTime? dataEvento;
  int? idPedidoSaida;
  int? idEventoStatus;
  int? idFuncionario;
  int? idPedidoSaidaEvento;
  EventoStatusModel? eventoStatus;
  FuncionarioModel? funcionario;

  PedidoSaidaEventoModel(
      {this.dataEvento,
      this.idPedidoSaida,
      this.idEventoStatus,
      this.idFuncionario,
      this.idPedidoSaidaEvento,
      this.funcionario,
      this.eventoStatus});

  PedidoSaidaEventoModel.fromJson(Map<String, dynamic> json) {
    dataEvento = json['data_evento'] != null
        ? DateTime.parse(json['data_evento'])
        : null;
    idPedidoSaida = json['id_pedido_saida'];
    idEventoStatus = json['id_evento_status'];
    idFuncionario = json['id_funcionario'];
    idPedidoSaidaEvento = json['id_pedido_saida_evento'];
    eventoStatus = json['evento_status'] != null
        ? new EventoStatusModel.fromJson(json['evento_status'])
        : null;
    funcionario = json['funcionario'] != null
        ? new FuncionarioModel.fromJson(json['funcionario'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data_evento'] =
        this.dataEvento != null ? this.dataEvento.toString() : null;
    data['id_pedido_saida'] = this.idPedidoSaida;
    data['id_evento_status'] = this.idEventoStatus;
    data['id_funcionario'] = this.idFuncionario;
    data['id_pedido_saida_evento'] =
        this.idPedidoSaidaEvento != null ? this.idPedidoSaidaEvento : null;
    data['evento_status'] =
        this.eventoStatus != null ? this.eventoStatus!.toJson() : null;

    return data;
  }
}
