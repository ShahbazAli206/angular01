import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class LocalStorageService {
  private localStorageKey = 'user_cards';

  constructor() {}

  getStoredCards(): any[] {
    const storedData = localStorage.getItem(this.localStorageKey);
    return storedData ? JSON.parse(storedData) : [];
  }

  addCard(card: any) {
    const storedData = this.getStoredCards();
    storedData.push(card);
    localStorage.setItem(this.localStorageKey, JSON.stringify(storedData));
  }

  clearStoredCards() {
    localStorage.removeItem(this.localStorageKey);
  }
  
}
