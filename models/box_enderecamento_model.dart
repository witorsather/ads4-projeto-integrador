import 'package:gpp/src/models/pecas_model/pecas_estoque_model.dart';
import 'package:gpp/src/models/prateleira_enderecamento_model.dart';

class BoxEnderecamentoModel {
  int? id_box;
  String? desc_box;
  int? id_prateleira;
  double? altura;
  double? largura;
  double? profundidade;
  int? unidade_medida;
  String? created_at;
  PrateleiraEnderecamentoModel? prateleira;
  String? endereco;

  PecasEstoqueModel? pecaEstoque;

  BoxEnderecamentoModel({
    this.id_box,
    this.desc_box,
    this.id_prateleira,
    this.altura,
    this.largura,
    this.profundidade,
    this.unidade_medida,
    this.created_at,
    this.prateleira,
    this.endereco,
    this.pecaEstoque,
  });

  factory BoxEnderecamentoModel.fromJson(Map<String, dynamic> json) {
    return BoxEnderecamentoModel(
      id_box: json['id_box'],
      desc_box: json['desc_box'],
      id_prateleira: json['id_prateleira'],
      altura: double.tryParse(json['altura'].toString()),
      largura: double.tryParse(json['largura'].toString()),
      profundidade: double.tryParse(json['profundidade'].toString()),
      unidade_medida: json['unidade_medida'],
      created_at: json['created_at'],
      endereco: json['endereco'] != null ? json['endereco'] : null,
      pecaEstoque: json['estoque'] != null ? PecasEstoqueModel.fromJson(json['estoque']) : null,
    );
    // prateleira: json['prateleira'] == null ? null : PrateleiraEnderecamentoModel.fromJson(json['prateleira']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id_box'] = this.id_box;
    data['desc_box'] = this.desc_box;
    data['id_prateleira'] = this.id_prateleira;
    data['altura'] = this.altura;
    data['largura'] = this.largura;
    data['profundidade'] = this.profundidade;
    data['unidade_medida'] = this.unidade_medida;
    data['created_at'] = this.created_at;

    return data;
  }

  String calcularMedida() {
    String? medida = '-';
    if (this.altura != null) {
      medida = altura.toString();
      if (this.largura != null) {
        medida = medida + 'x' + largura.toString();
        if (this.profundidade != null) {
          medida = medida + 'x' + profundidade.toString();
        }
      }
    }
    return medida;
  }
}
