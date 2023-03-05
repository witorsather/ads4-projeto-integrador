
class FilialRegional {
  DateTime? dataInicio;
  DateTime? dataFim;
  int? filial;
  int? idRegional;

  FilialRegional({this.dataInicio, this.dataFim, this.filial, this.idRegional});

  factory FilialRegional.fromJson(Map<String, dynamic> json) {
    return FilialRegional(
        dataInicio: json['data_inicio'] != null
            ? DateTime.parse(json['data_inicio'])
            : null,
        dataFim:
            json['data_fim'] != null ? DateTime.parse(json['data_fim']) : null,
        filial: json['id_filial'],
        idRegional: json['id_regional']);
  }
}
