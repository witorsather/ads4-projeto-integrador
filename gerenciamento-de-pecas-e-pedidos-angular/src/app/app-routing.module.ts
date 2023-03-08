import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ProdutoListComponent } from './produto-list/produto-list.component';
import { ProdutoComponent } from './produto/produto.component';
import { EntregaComponent } from './entrega/entrega.component';

const routes: Routes = [
  {path: '', component: ProdutoComponent},
  {path: 'produto/:id', component: ProdutoComponent},
  {path: 'produtoList', component: ProdutoListComponent},
  {path: 'entrega', component: EntregaComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
