import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule} from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CardListComponent } from './components/card-list/card-list.component';
import { ProductListComponent } from './components/product-list/product-list.component';
import { NavBarComponent } from './cards/nav-bar/nav-bar.component';
import { FooterComponent } from './components/footer/footer.component';

@NgModule({
  declarations: [
    AppComponent,
    CardListComponent,
    ProductListComponent,
    NavBarComponent,
    FooterComponent,
  ],

  imports: [
    BrowserModule,
    HttpClientModule,
    AppRoutingModule
  ],

  providers: [],
  bootstrap: [AppComponent]

})
export class AppModule { }
