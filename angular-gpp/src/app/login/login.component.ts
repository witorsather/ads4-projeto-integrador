import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { LocalDataSource } from 'ng2-smart-table';
import { LoginService } from '../login.service';
import { AccountModel } from '../models/AccountModel';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit{

  public login:AccountModel = new AccountModel();

  public fornecedor: boolean = false;

  


  constructor(private loginService: LoginService, private router: Router, private route: ActivatedRoute){}

  ngOnInit(): void {
    this.route.params.subscribe(params => {
      let id = params['id'];
      if(id !== 'novo'){
        this.login = this.loginService.get(id);        
      }
      console.log(id);
    });
  }

  salvar(){
    this.loginService.add(this.login);
    this.login = new AccountModel();
    console.log(`funcionou. Nome: `);
    this.router.navigateByUrl('/loginList');
  }


}
