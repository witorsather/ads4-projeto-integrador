class ClienteFilialModel {
  idCliente: number;
  idFilial: number;
  cliente: ClienteModel;
  filialRegional: FilialRegional = new FilialRegional;

  constructor(idCliente: number, idFilial: number, cliente: ClienteModel, filialRegional: FilialRegional) {
    this.idCliente = idCliente;
    this.idFilial = idFilial;
    this.cliente = cliente;
    this.filialRegional = filialRegional;
  }
}
