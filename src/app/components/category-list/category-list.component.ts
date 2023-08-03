import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { LocalStorageService } from '../../services/local-storage-service.service';
import { CategoriesService } from 'src/app/services/categories.service';
import { TopProductsService } from 'src/app/services/top-products.service';


@Component({
  selector: 'app-card-list',
  templateUrl: './category-list.component.html',
  styleUrls: ['./category-list.component.css']
})
export class CardListComponent implements OnInit {
categories: any[] = [];
producttop: any[] = [];


  constructor(private dataService: CategoriesService, private topProducts: TopProductsService, private http: HttpClient, private localStorageService: LocalStorageService, private router: Router) {}
 
 
  onCardClick(card: any) {
    this.router.navigate(['/category', card.id]);

  }

  
  onCartAdd(card: any) {
    this.localStorageService.addCard(card);
  }
 
  onClearLocalStorageClick() {
    this.localStorageService.clearStoredCards();
  }
  
  ngOnInit(): void {
    this.fetchData();
    this.top5Products();
  }



  fetchData(): void {
    this.dataService.getData().subscribe(
      (data) => {
        this.categories = data;
        console.log('Categories from service :', this.categories);

      },
      (error) => {
        console.error('Error fetching data from service:', error);
      }
    );
  }

  top5Products(): void {
    this.topProducts.getData().subscribe(
      (data) => {
        this.producttop = data;
        console.log('producttop from service :', this.producttop);

      },
      (error) => {
        console.error('Error fetching data from service:', error);
      }
    );
  }


}