import { Component } from '@angular/core';
import { Produto } from './models/produto';
import { LocalDataSource } from 'ng2-smart-table';
import { ProdutoService } from './produto.service';
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
          title: 'Produto',
          link: 'produtoList'
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
