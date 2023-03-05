class PaginaModel {
  int total = 0;
  int atual = 0;
  PaginaModel({
    required this.total,
    required this.atual,
  });

  factory PaginaModel.fromJson(Map<String, dynamic> json) {
    return PaginaModel(total: json['total'], atual: json['atual']);
  }

  getAtual() {
    return this.atual;
  }

  getTotal() {
    return this.total;
  }

  /**
   * Função responsável por navegar para a primeira página
   */

  primeira() {
    this.atual = 1;
  }

  /**
   * Função responsável por navegar para a página anterior
   */

  anterior() {
    if (this.atual > 0) {
      this.atual = this.atual - 1;
    }
  }

  /**
   * Função responsável por navegar para a proxima página
   */

  proxima() {
    if (this.atual != this.total) {
      this.atual = this.atual + 1;
    }
  }

  /**
   * Função responsável por navegar para a ultima pagina
   */

  ultima() {
    this.atual = this.total;
  }
}
