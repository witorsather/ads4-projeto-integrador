import { Injectable } from '@angular/core';
import { AccountModel } from './models/AccountModel';

@Injectable({
  providedIn: 'root'
})
export class LoginService {

  public logins: AccountModel[] = [];

  constructor() { }

  public add(login: AccountModel){
    this.logins.push(login);
  }

  public get(idx: number): AccountModel{
    return this.logins[idx];
  }

  

}
