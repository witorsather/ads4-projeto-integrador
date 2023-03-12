import { Component } from '@angular/core';
import { Peca } from './models/PecaModel';
import { LocalDataSource } from 'ng2-smart-table';
import { PecaService } from './peca.service';
import { NbMenuItem } from '@nebular/theme';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent {
  title = 'agenda';


  items: NbMenuItem[] = [
    {
      title: 'Cadastro',
      expanded: true,
      children: [
        {
          title: 'Peca',
          link: 'pecaList'
        },
        {
          title: 'Locais de Entrega',
          link: 'entrega'
        },
      ],
    },
    {
      title: 'Relatórios',
    },
  ];  




}
