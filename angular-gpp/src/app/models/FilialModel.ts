class FilialModel {
  idFilial: number;
  sigla: string;
  clienteFilial: ClienteFilialModel = new ClienteFilialModel();

  constructor(idFilial: number, sigla: string, clienteFilial: ClienteFilialModel) {
    this.idFilial = idFilial;
    this.sigla = sigla;
    this.clienteFilial = clienteFilial;
  }
}
