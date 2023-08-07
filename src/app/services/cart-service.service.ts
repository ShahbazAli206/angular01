import { Injectable } from '@angular/core';
import { LocalStorageService } from './local-storage-service.service';
@Injectable({
  providedIn: 'root'
})
export class CartServiceService {
  cartItems: any[] = [];

  constructor(private localStorageService: LocalStorageService) { }


  fetchCardsFromLocalStorage(): void {

    const cardDataString = localStorage.getItem('user_cards');
       if (cardDataString) {
         this.cartItems = JSON.parse(cardDataString);

         this.cartItems.forEach((cartItem: any) => {
           cartItem.count = 1;
         });
    }

    console.log('the cart data fetch is : ', this.cartItems);
  }
}
