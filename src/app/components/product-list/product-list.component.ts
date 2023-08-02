import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { map } from 'rxjs/operators';
import { LocalStorageService } from '../../services/local-storage-service.service';

interface Card {
  id: number;
  name: string;
  image: string;
  // Add other properties as needed
}
@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent {
  cards: any[] = [];

  constructor(private http: HttpClient, private localStorageService: LocalStorageService) {}
 
 
  onCardClick(card: any) {
    this.localStorageService.addCard(card);
  }

  
  onClearLocalStorageClick() {
    this.localStorageService.clearStoredCards();
  }


  
  ngOnInit(): void {
    this.fetchCardsFromApi();
  }

  fetchCardsFromApi(): void {
    // Replace 'YOUR_API_ENDPOINT' with the actual API endpoint URL
    this.http.get<any>('http://127.0.0.1:8000/api/categories_angular').pipe(
      map((data) => {
        // Assuming the API returns an array of cards with 'imageUrl' property
        // Add 'http://127.0.0.1:8000/storage/' before each image URL
        return data.map((card: Card) => ({
          ...card,
          imageUrl: 'http://127.0.0.1:8000/storage/' + card.image
        }));
      })
    ).subscribe(
      (data) => {
        this.cards = data; // Assuming the API returns an array of cards
        console.log('Cards:', this.cards); // Add this line to console log the cards

      },
      (error) => {
        console.error('Error fetching data from API:', error);
      }
    );
  }

}
