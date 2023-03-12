export class DepartamentoModel {
  idDepartamento: number;
  nome: string;
  situacao: boolean;
  createdAt: string;
  updatedAt: string;

  constructor(idDepartamento: number, nome: string, situacao: boolean, createdAt: string, updatedAt: string) {
    this.idDepartamento = idDepartamento;
    this.nome = nome;
    this.situacao = situacao;
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
  }
}
