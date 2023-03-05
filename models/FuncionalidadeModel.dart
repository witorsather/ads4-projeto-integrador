import 'package:gpp/src/models/subfuncionalidade.dart';

class FuncionalidadeModel {
  int? idFuncionalidade;
  String? nome;
  String? icone;
  bool? situacao;
  bool? isExpanded = false;
  List<SubFuncionalidadeModel>? subFuncionalidades;
  FuncionalidadeModel({
    this.idFuncionalidade,
    this.nome,
    this.icone,
    this.situacao,
    this.isExpanded,
    this.subFuncionalidades,
  });

  factory FuncionalidadeModel.fromJson(Map<String, dynamic> json) {
    return FuncionalidadeModel(
        idFuncionalidade: json['id_funcionalidade'],
        nome: json['nome'],
        icone: json['icone'],
        situacao: json['situacao'],
        subFuncionalidades: json['subfuncionalidades'] != null
            ? json['subfuncionalidades'].map<SubFuncionalidadeModel>((data) {
                return SubFuncionalidadeModel.fromJson(data);
              }).toList()
            : null,
        isExpanded: false);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_funcionalidade'] = idFuncionalidade;
    data['nome'] = nome;
    data['icone'] = icone;
    data['situacao'] = situacao;
    data['subfuncionalidades'] = subFuncionalidades != null
        ? subFuncionalidades!.map((v) => v.toJson()).toList()
        : null;

    return data;
  }
}
