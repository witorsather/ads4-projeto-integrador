import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PecaListComponent } from './peca-list/peca-list.component';
import { PecaComponent } from './peca/peca.component';
import { EntregaComponent } from './entrega/entrega.component';
import { LoginComponent } from './login/login.component';

const routes: Routes = [
  {path: 'login', component: LoginComponent},
  {path: 'peca/:id', component: PecaComponent},
  {path: 'pecaList', component: PecaListComponent},
  {path: 'entrega', component: EntregaComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
