import { Component, OnInit } from '@angular/core';
import { LocalStorageService } from '../../services/local-storage-service.service';
import { DatePipe } from '@angular/common';
import { OrderPlacementService } from 'src/app/services/order-placement.service';


interface TotalData {
  total: number;
}

@Component({
  selector: 'app-check-out',
  templateUrl: './check-out.component.html',
  styleUrls: ['./check-out.component.css']
})
export class CheckOutComponent implements OnInit {
  currentDate: string;
  TotalAmount: number = 0;
  cartItems: any[] = [];
  orderIdd: number | null = null;
  orderAmount: number | null = null;

 

  constructor(private localStorageService: LocalStorageService, private datePipe: DatePipe, private orderPlacementService: OrderPlacementService) {
    this.getstoreTotalLocal();
    this.ongetStoredCards();
    const today = new Date();
    this.currentDate = this.datePipe.transform(today, 'dd MMMM yyyy')!;

  }

  ngOnInit() {
    this.getstoreTotalLocal();
    this.ongetStoredCards();
  }

  getstoreTotalLocal(){
    const data = this.localStorageService.getStoredTotalAmount();

    if (typeof data === 'number') {
      this.TotalAmount = data as number;
      console.log('Total Amount:', this.TotalAmount);
    } else if (typeof data === 'object' && 'total' in data) {
      this.TotalAmount = (data as TotalData).total;
      console.log('Total Amount:', this.TotalAmount);
    } else {
      console.log('Invalid data format in the stored total amount.');
    }
}


placeOrder() {
  const orderData = {
    currentDate: this.currentDate,
    totalAmount: this.TotalAmount,
    cartItems: this.cartItems
  };

  this.orderPlacementService.placeOrder(orderData)
    .subscribe(
      (response) => {
        // Handle the response after the order is placed successfully
        console.log('Order placed successfully!', response);
        this.orderIdd = response.order_id;
        this.orderAmount = response.orderAmount;

      },
      (error) => {
        // Handle any error that occurs during the order placement
        console.error('Error placing order:', error);
      }
    ); 
}

cartCheckOut(){ 
  this.placeOrder();
  this.localStorageService.clearStoredCards();

 }



 ongetStoredCards() {
    const cardDataString = localStorage.getItem('user_cards');
    if (cardDataString) {
    this.cartItems = this.localStorageService.getStoredCards(); 
    console.log('cartItems:', this.cartItems);

  }}

}