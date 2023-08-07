import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class LocalStorageService {
  private localStorageKey = 'user_cards';
  private localStorageKeyTotal = 'user_Total';


  constructor() {}



  addOrUpdateUserTotal(TotalAmount: number) {
    const userTotalData = JSON.parse(localStorage.getItem('user_Total') || '{}');
  
    // Check if 'user_Total' key already exists in local storage
    if ('total' in userTotalData) {
      console.log('the Total amount is updating to : ', TotalAmount);
      userTotalData.total = TotalAmount;
    } else {
      console.log('the Total amount is adding Up : ');
      userTotalData.total = TotalAmount;
    }
  
    // Save the updated userTotalData back to local storage
    localStorage.setItem('user_Total', JSON.stringify(userTotalData));
  }

  getStoredTotalAmount(): any[] {
    const storedData = localStorage.getItem(this.localStorageKeyTotal);
    return storedData ? JSON.parse(storedData) : [];
  }


  getStoredCards(): any[] {
    const storedData = localStorage.getItem(this.localStorageKey);
    return storedData ? JSON.parse(storedData) : [];
  }

  addCard(card: any) {
    if (!card.hasOwnProperty('count')) {
      card.count = 1;
    }
    const storedData = this.getStoredCards();
    const cardExists = storedData.some(existingCard => existingCard.id === card.id);

    if (!cardExists) {
      // If the card is not already present, add it to storedData array
      card.count = 1;
      storedData.push(card);
      localStorage.setItem(this.localStorageKey, JSON.stringify(storedData));
    }

    localStorage.setItem(this.localStorageKey, JSON.stringify(storedData));
  }

  removeCard(card: any) {
    const storedData = this.getStoredCards();
    const updatedData = storedData.filter((storedCard: any) => storedCard.id !== card.id);
    localStorage.setItem(this.localStorageKey, JSON.stringify(updatedData));
  }
  clearStoredCards() {
    localStorage.removeItem(this.localStorageKey);
    localStorage.removeItem(this.localStorageKeyTotal);
  }

  updateCardCountInLocalStorage(cardToUpdate: any): void {
    const storedData = this.getStoredCards();
    const cardIndex = storedData.findIndex((card: any) => card.id === cardToUpdate.id);
  
    if (cardIndex !== -1) {
      // Card exists in the array, increment the count by 1
      // storedData[cardIndex].count++;
      if (storedData[cardIndex].hasOwnProperty('count')) {
        // Increment the count if the 'count' property exists
        storedData[cardIndex].count++;
      } else {
        // If 'count' property doesn't exist, add it and set it to 1
        storedData[cardIndex].count = 1;
      }
      // Update the local storage with the modified data
      localStorage.setItem(this.localStorageKey, JSON.stringify(storedData));
    }
  }

  decrementCardCountInLocalStorage(cardToUpdate: any): void {
    const storedData = this.getStoredCards();
    const cardIndex = storedData.findIndex((card: any) => card.id === cardToUpdate.id);
  
    if (cardIndex !== -1 && storedData[cardIndex].count > 1) {
      // Card exists in the array, and count is greater than 1, decrement the count by 1
      storedData[cardIndex].count--;
  
      // Update the local storage with the modified data
      localStorage.setItem(this.localStorageKey, JSON.stringify(storedData));
    }
  }
 
  
  
  
  
  
  
  
}
