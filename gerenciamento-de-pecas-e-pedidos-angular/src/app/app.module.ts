import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';


import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NbButtonModule, NbCardModule, NbCheckboxModule, NbInputModule, NbLayoutModule, NbMenuModule, NbSidebarModule, NbThemeModule } from '@nebular/theme';
import { Ng2SmartTableModule } from 'ng2-smart-table';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { ContatoComponent } from './contato/contato.component';
import { EntregaComponent } from './entrega/entrega.component';
import { ContatoListComponent } from './contato-list/contato-list.component';
import { NbEvaIconsModule } from '@nebular/eva-icons';


@NgModule({
  declarations: [
    AppComponent,
    ContatoComponent,
    EntregaComponent,
    ContatoListComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    NbThemeModule.forRoot(),
    NbLayoutModule,
    NbSidebarModule.forRoot(),
    NbButtonModule,
    NbInputModule,
    Ng2SmartTableModule,
    NbCheckboxModule,
    NbMenuModule.forRoot(),
    NbCardModule,
    BrowserAnimationsModule,
    NbEvaIconsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
