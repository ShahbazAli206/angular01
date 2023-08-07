import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CardListComponent } from './components/category-list/category-list.component';
import { ProductListComponent } from './components/product-list/product-list.component';
import { CartComponent } from './components/cart/cart.component';
import { CheckOutComponent } from './components/check-out/check-out.component';

const routes: Routes = [
  { path: '', component: CardListComponent },
  { path: 'category/:id', component: ProductListComponent },
  { path: 'cart', component: CartComponent },
  { path: 'checkOut', component: CheckOutComponent },


];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
