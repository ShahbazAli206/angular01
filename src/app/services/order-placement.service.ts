import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import { Observable } from 'rxjs';


interface OrderResponse {
  message: string;
  order_id: number; // Assuming the order_id is of type number
  orderAmount: number; 
}

@Injectable({
  providedIn: 'root'
})
export class OrderPlacementService {
  private apiUrl = 'http://127.0.0.1:8000/api/angularOrderPlacement';

  constructor(private http:HttpClient) { }


  placeOrder(orderData: any) : Observable<OrderResponse>{
    return this.http.post<OrderResponse>(this.apiUrl, orderData);
  }


}