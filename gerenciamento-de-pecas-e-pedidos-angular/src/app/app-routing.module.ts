import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ContatoListComponent } from './contato-list/contato-list.component';
import { ContatoComponent } from './contato/contato.component';
import { EntregaComponent } from './entrega/entrega.component';

const routes: Routes = [
  {path: '', component: ContatoComponent},
  {path: 'contato/:id', component: ContatoComponent},
  {path: 'contatoList', component: ContatoListComponent},
  {path: 'entrega', component: EntregaComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
