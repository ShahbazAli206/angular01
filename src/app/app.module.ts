import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule} from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CardListComponent } from './components/category-list/category-list.component';
import { ProductListComponent } from './components/product-list/product-list.component';
import { FooterComponent } from './components/footer/footer.component';
import { NavBarComponent } from './components/nav-bar/nav-bar.component';
import { HeaderComponent } from './components/header/header.component';
import { CartComponent } from './components/cart/cart.component';
import { CheckOutComponent } from './components/check-out/check-out.component';
import { DatePipe } from '@angular/common';
@NgModule({
  declarations: [
    AppComponent,
    CardListComponent,
    ProductListComponent,
    FooterComponent,
    NavBarComponent,
    HeaderComponent,
    CartComponent,
    CheckOutComponent
  ],

  imports: [
    BrowserModule,
    HttpClientModule,
    AppRoutingModule
  ],

  providers: [DatePipe],
  bootstrap: [AppComponent]

})
export class AppModule { }
