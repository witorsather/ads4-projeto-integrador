import 'package:gpp/src/models/funcionario_model.dart';
import 'package:gpp/src/models/inventario/inventario_evento_model.dart';
import 'package:gpp/src/models/inventario/inventario_peca_model.dart';
import 'package:gpp/src/models/piso_enderecamento_model.dart';

class InventarioModel {
  int? id_inventario;
  int? id_piso;
  int? id_corredor;
  int? id_estante;
  int? id_prateleira;
  int? id_box;
  int? id_funcionario;
  int? id_filial;
  String? endereco;
  FuncionarioModel? funcionario;
  List<InventarioEventoModel>? inventarioEvento;
  List<InventarioPecaModel>? inventarioPeca;
  PisoEnderecamentoModel? piso;

  InventarioModel({
    this.id_inventario,
    this.id_piso,
    this.id_corredor,
    this.id_estante,
    this.id_prateleira,
    this.id_box,
    this.id_funcionario,
    this.id_filial,
    this.endereco,
    this.funcionario,
    this.inventarioEvento,
    this.inventarioPeca,
    this.piso,
  });

  factory InventarioModel.fromJson(Map<String, dynamic> json) {
    return InventarioModel(
      id_inventario: json['id_inventario'],
      id_piso: json['id_piso'],
      id_corredor: json['id_corredor'],
      id_estante: json['id_estante'],
      id_prateleira: json['id_prateleira'],
      id_box: json['id_box'],
      id_funcionario: json['id_funcionario'],
      id_filial: json['id_filial'],
      endereco: json['endereco'],
      funcionario: json['funcionario'] != null ? FuncionarioModel.fromJson(json['funcionario']) : null,
      inventarioEvento: json['inventario_evento'] != null
          ? json['inventario_evento'].map<InventarioEventoModel>((data) => InventarioEventoModel.fromJson(data)).toList()
          : null,
      inventarioPeca: json['inventario_peca'] != null
          ? json['inventario_peca'].map<InventarioPecaModel>((data) => InventarioPecaModel.fromJson(data)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['id_inventario'] = this.id_inventario;
    data['id_piso'] = this.id_piso;
    data['id_corredor'] = this.id_corredor;
    data['id_estante'] = this.id_estante;
    data['id_prateleira'] = this.id_prateleira;
    data['id_box'] = this.id_box;
    data['piso'] = this.piso != null ? this.piso!.toJson() : null;
    return data;
  }
}
