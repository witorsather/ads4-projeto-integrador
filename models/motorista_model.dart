import 'package:gpp/src/models/func_motorista_model.dart';

class MotoristaModel {
  int? idMotorista;
  String? idFilial;
  String? usrCria;
  String? dataCria;
  String? usrAlt;
  Null dataAlt;
  String? situacao;
  String? cnh;
  String? validadeCnh;
  String? dataInicioHab;
  String? categoriaCnh;
  String? limiteCarga;
  String? idTransportadora;
  FuncMotoristaModel? funcMotorista;

  MotoristaModel(
      {this.idMotorista,
      this.idFilial,
      this.usrCria,
      this.dataCria,
      this.usrAlt,
      this.dataAlt,
      this.situacao,
      this.cnh,
      this.validadeCnh,
      this.dataInicioHab,
      this.categoriaCnh,
      this.limiteCarga,
      this.idTransportadora,
      this.funcMotorista});

  MotoristaModel.fromJson(Map<String, dynamic> json) {
    idMotorista = json['id_motorista'];
    idFilial = json['id_filial'];
    usrCria = json['usr_cria'];
    dataCria = json['data_cria'];
    usrAlt = json['usr_alt'];
    dataAlt = json['data_alt'];
    situacao = json['situacao'];
    cnh = json['cnh'];
    validadeCnh = json['validade_cnh'];
    dataInicioHab = json['data_inicio_hab'];
    categoriaCnh = json['categoria_cnh'];
    limiteCarga = json['limite_carga'];
    idTransportadora = json['id_transportadora'];
    funcMotorista = json['func_motorista'] != null ? new FuncMotoristaModel.fromJson(json['func_motorista']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_motorista'] = this.idMotorista;
    data['id_filial'] = this.idFilial;
    data['usr_cria'] = this.usrCria;
    data['data_cria'] = this.dataCria;
    data['usr_alt'] = this.usrAlt;
    data['data_alt'] = this.dataAlt;
    data['situacao'] = this.situacao;
    data['cnh'] = this.cnh;
    data['validade_cnh'] = this.validadeCnh;
    data['data_inicio_hab'] = this.dataInicioHab;
    data['categoria_cnh'] = this.categoriaCnh;
    data['limite_carga'] = this.limiteCarga;
    data['id_transportadora'] = this.idTransportadora;
    if (this.funcMotorista != null) {
      data['func_motorista'] = this.funcMotorista!.toJson();
    }
    return data;
  }
}
