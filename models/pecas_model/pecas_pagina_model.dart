class PecasPaginaModel {
  int? paginaAtual;
  int? paginaTotal;

  PecasPaginaModel({
    this.paginaAtual,
    this.paginaTotal,
  });

  factory PecasPaginaModel.fromJson(Map<String, dynamic> json) {
    return PecasPaginaModel(
      paginaAtual: json['current_page'],
      paginaTotal: json['last_page'],
    );
  }
}
