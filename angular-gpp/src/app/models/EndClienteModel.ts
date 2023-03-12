export class EndClienteModel {
  constructor(
    public idEndereco: number,
    public cep: string,
    public logradouro: string,
    public numero: string,
    public bairro: string,
    public localidade: string,
    public uf: string,
    public complemento: string
  ) {}

}
