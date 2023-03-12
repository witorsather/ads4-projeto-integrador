export class AutenticacaoModel {
  id: string;
  senha: string;
  tokenAcesso: string;

  constructor(id: string, senha: string, tokenAcesso: string) {
    this.id = id;
    this.senha = senha;
    this.tokenAcesso = tokenAcesso;
  }
}
