import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { map } from 'rxjs/operators';
import { LocalStorageService } from '../../services/local-storage-service.service';
import { Router } from '@angular/router';

interface Card {
  id: number;
  name: string;
  image: string;
  // Add other properties as needed
}

@Component({
  selector: 'app-card-list',
  templateUrl: './card-list.component.html',
  styleUrls: ['./card-list.component.css']
})
export class CardListComponent {
cards: any[] = [];

  constructor(private http: HttpClient, private localStorageService: LocalStorageService, private router: Router) {}
 
 
  onCardClick(card: any) {
    this.localStorageService.addCard(card);
    this.router.navigate(['/card', card.id]);

  }

  
  onClearLocalStorageClick() {
    this.localStorageService.clearStoredCards();
  }


  
  ngOnInit(): void {
    this.fetchCardsFromApi();
  }

  fetchCardsFromApi(): void {
    this.http.get<any>('http://127.0.0.1:8000/api/categories_angular').pipe(
      map((data) => {
        return data.map((card: Card) => ({
          ...card,
          imageUrl: 'http://127.0.0.1:8000/storage/' + card.image
        }));
      })
    ).subscribe(
      (data) => {
        this.cards = data;
        console.log('Cards:', this.cards);
      },
      (error) => {
        console.error('Error fetching data from API:', error);
      }
    );
  }


}