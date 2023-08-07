import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';


interface Card {
  id: number;
  name: string;
  image: string;
  // Add other properties as needed
}


@Injectable({
  providedIn: 'root'
})
export class ProductsService {

  private apiUrl = 'http://127.0.0.1:8000/api';

  constructor(private http: HttpClient) { }

  // Define a method to fetch data from the API using the cardId
  getProducts(cardId: number): Observable<any> {
    return this.http.get<any>(`${this.apiUrl}/products_angular?cardId=${cardId}`).pipe(
      map((data) => {
        return data.map((card: Card) => ({
          ...card,
          imageUrl: 'http://127.0.0.1:8000/storage/' + card.image
        }));
      })
    );
  }

}
