import 'package:gpp/src/models/caminhao_model.dart';
import 'package:gpp/src/models/filial/filial_model.dart';
import 'package:gpp/src/models/funcionario_model.dart';
import 'package:gpp/src/models/item_mapa_carga_model.dart';
import 'package:gpp/src/models/mapa_carga_evento_model.dart';
import 'package:gpp/src/models/motivo_cancelamento_carga_model.dart';
import 'package:gpp/src/models/motorista_model.dart';
import 'package:gpp/src/models/transportadora_model.dart';

class MapaCargaModel {
  int? idMapaCarga;
  DateTime? dataEmissao;
  int? idFilialOrigem;
  int? idFilialDestino;
  FilialModel? filialOrigem;
  FilialModel? filialDestino;
  int? idTransportadora;
  int? idCaminhao;
  int? idMotorista;
  int? volume;
  String? especieVolume;
  int? idFuncionario;
  int? tipoEntrega;
  List<ItemMapaCargaModel>? itemMapaCarga;
  TransportadoraModel? transportadora;
  MotoristaModel? motorista;
  CaminhaoModel? caminhao;
  FuncionarioModel? funcionario;
  List<MapaCargaEventoModel>? mapaCargaEvento;
  int? idMotivoCancelamento;
  MotivoCancelamentoCargaModel? motivoCancelamento;

  MapaCargaModel({
    this.idMapaCarga,
    this.dataEmissao,
    this.idFilialOrigem,
    this.idFilialDestino,
    this.filialOrigem,
    this.filialDestino,
    this.idTransportadora,
    this.idCaminhao,
    this.idMotorista,
    this.volume,
    this.especieVolume,
    this.idFuncionario,
    this.tipoEntrega,
    this.itemMapaCarga,
    this.transportadora,
    this.funcionario,
    this.motorista,
    this.caminhao,
    this.mapaCargaEvento,
    this.idMotivoCancelamento,
    this.motivoCancelamento,
  });

  MapaCargaModel.fromJson(Map<String, dynamic> json) {
    idMapaCarga = json['id_mapa_carga'];
    dataEmissao = json['data_emissao'] != null
        ? DateTime.parse(json['data_emissao'])
        : null;
    filialOrigem = json['filial_origem'] != null
        ? FilialModel.fromJson(json['filial_origem'])
        : null;
    filialDestino = json['filial_destino'] != null
        ? FilialModel.fromJson(json['filial_destino'])
        : null;
    idTransportadora = json['id_transportadora'];
    idCaminhao = json['id_caminhao'];
    idMotorista = json['id_motorista'];
    volume = json['volume'];
    especieVolume = json['especie_volume'];
    idFuncionario = json['id_funcionario'];
    tipoEntrega = json['tipo_entrega'];
    motorista = json['motorista'] != null
        ? MotoristaModel.fromJson(json['motorista'])
        : null;
    caminhao = json['caminhao'] != null
        ? CaminhaoModel.fromJson(json['caminhao'])
        : null;
    transportadora = json['transportadora'] != null
        ? TransportadoraModel.fromJson(json['transportadora'])
        : null;
    funcionario = json['funcionario'] != null
        ? FuncionarioModel.fromJson(json['funcionario'])
        : null;
    if (json['item_mapa_carga'] != null) {
      itemMapaCarga = <ItemMapaCargaModel>[];
      json['item_mapa_carga'].forEach((v) {
        itemMapaCarga!.add(new ItemMapaCargaModel.fromJson(v));
      });
    }
    if (json['mapa_carga_evento'] != null) {
      mapaCargaEvento = <MapaCargaEventoModel>[];
      json['mapa_carga_evento'].forEach((v) {
        mapaCargaEvento!.add(new MapaCargaEventoModel.fromJson(v));
      });
    }
    motivoCancelamento = json['motivo_cancelamento'] != null
        ? MotivoCancelamentoCargaModel.fromJson(json['motivo_cancelamento'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_mapa_carga'] = this.idMapaCarga;
    data['data_emissao'] = this.dataEmissao;
    data['filial_origem'] = this.idFilialOrigem;
    data['filial_destino'] = this.idFilialDestino;
    data['id_transportadora'] = this.idTransportadora;
    data['id_caminhao'] = this.idCaminhao;
    data['id_motorista'] = this.idMotorista;
    data['volume'] = this.volume;
    data['especie_volume'] = this.especieVolume;
    data['id_funcionario'] = this.idFuncionario;
    data['tipo_entrega'] = this.tipoEntrega;
    data['item_mapa_carga'] = this.itemMapaCarga != null
        ? this.itemMapaCarga!.map((v) => v.toJson()).toList()
        : null;
    data['id_motivo_cancelamento'] = this.idMotivoCancelamento;

    return data;
  }
}
