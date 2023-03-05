class CapacidadeEstoqueModel {
  int? idBox;
  int? volumeTotal;
  int? volumeUtilizado;

  CapacidadeEstoqueModel({this.idBox, this.volumeTotal, this.volumeUtilizado});

  factory CapacidadeEstoqueModel.fromJson(Map<String, dynamic> json) {
    return CapacidadeEstoqueModel(
        idBox: json['id_box'],
        volumeTotal: json['volume_total'],
        volumeUtilizado: json['volume_utilizado']);
  }
}
