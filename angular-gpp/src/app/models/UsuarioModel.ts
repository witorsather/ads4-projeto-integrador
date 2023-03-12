import { DepartamentoModel } from './departamento.model';
import { PefllUsuarioModel } from './pefll-usuario.model';

export class UsuarioModel {
  id: number;
  uid: number;
  nome: string;
  email: string;
  idFilial: number;
  accessToken: string;
  tokenType: string;
  emailVerifiedAt: string;
  password: string;
  rememberToken: string;
  createdAt: string;
  updatedAt: string;
  active: boolean;
  iddepto: string;
  foto: string;
  departamento: DepartamentoModel;
  petfllUsuario: PefllUsuarioModel;

  constructor(
    id: number,
    uid: number,
    nome: string,
    email: string,
    idFilial: number,
    accessToken: string,
    tokenType: string,
    emailVerifiedAt: string,
    password: string,
    rememberToken: string,
    createdAt: string,
    updatedAt: string,
    active: boolean,
    iddepto: string,
    foto: string,
    departamento: DepartamentoModel,
    petfllUsuario: PefllUsuarioModel
  ) {
    this.id = id;
    this.uid = uid;
    this.nome = nome;
    this.email = email;
    this.idFilial = idFilial;
    this.accessToken = accessToken;
    this.tokenType = tokenType;
    this.emailVerifiedAt = emailVerifiedAt;
    this.password = password;
    this.rememberToken = rememberToken;
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
    this.active = active;
    this.iddepto = iddepto;
    this.foto = foto;
    this.departamento = departamento;
    this.petfllUsuario = petfllUsuario;
  }
}
