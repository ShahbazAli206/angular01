import { Component, OnInit } from '@angular/core';
import { LocalStorageService } from '../../services/local-storage-service.service';
import { Router } from '@angular/router';
import { OrderPlacementService } from 'src/app/services/order-placement.service';
import { DatePipe } from '@angular/common';


@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit{
  cartItems: any[] = [];
  hi: any[] = [];
  currentDate: string;

  price: number = 0;
  TotalAmount: number = 0;

  constructor(private router: Router, private datePipe: DatePipe, private localStorageService: LocalStorageService, private orderPlacementService: OrderPlacementService) {
    const today = new Date();
    this.currentDate = this.datePipe.transform(today, 'dd MMMM yyyy')!;
  }
  
  storeTotalLocal(){
    this.localStorageService.addOrUpdateUserTotal(this.TotalAmount);
  }
  

  ngOnInit(): void {  this.ongetStoredCards();   }



  cartCheckOut(){ 
    this.storeTotalLocal();
    this.router.navigate(['/checkOut']); }

  onCartRemove(card: any) {
    this.localStorageService.removeCard(card);
    this.ongetStoredCards();
  }

  ongetStoredCards() {
    const cardDataString = localStorage.getItem('user_cards');
    if (cardDataString) {
    this.cartItems = this.localStorageService.getStoredCards(); 
    // this.cartItems.forEach((cartItem: any) => {
    //   cartItem.count = 1;
    // });
    console.log('the this.hi data fetch is : ', this.hi);
    this.calculateTotalAmount();

  }}

  calculateAmount(cartItem: any): number {
    return cartItem.count * cartItem.price;
  }

  calculateTotalAmount(): void {
    this.TotalAmount = this.cartItems.reduce((total, cartItem) => {
      return total + this.calculateAmount(cartItem);
    }, 0);
  }

  incrementCount(cartItem: any) {
    cartItem.count++;
    this.localStorageService.updateCardCountInLocalStorage(cartItem);
    this.ongetStoredCards();
    this.calculateTotalAmount();

    console.log('the cart data after increment is : ', this.cartItems);

  }

  decrementCount(cartItem: any) {
    if (cartItem.count > 1) {
      cartItem.count--;
      this.localStorageService.decrementCardCountInLocalStorage(cartItem);
      this.ongetStoredCards();
      this.calculateTotalAmount();
      console.log('the cart data after decrement is : ', this.cartItems);

    }
  }
}


