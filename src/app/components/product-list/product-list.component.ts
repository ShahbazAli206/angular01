import { Component , OnInit } from '@angular/core';
import { HttpClient, HttpParams  } from '@angular/common/http';
import { map } from 'rxjs/operators';
import { LocalStorageService } from '../../services/local-storage-service.service';
import { ActivatedRoute } from '@angular/router';
import { ProductsService } from 'src/app/services/products.service';


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
export class ProductListComponent implements OnInit {

  products: any[] = [];
  displayedCards: any[] = [];
  currentPage = 1;
  pageSize = 2;
  totalPages = 1;



  private cardId!: number; 
  constructor(private route: ActivatedRoute, private dataService: ProductsService, private http: HttpClient, private localStorageService: LocalStorageService) {}
 
 
  onCardClick(card: any) {
    this.localStorageService.addCard(card);
  }
 
  onClearLocalStorageClick() {
    this.localStorageService.clearStoredCards();
  }


  
  ngOnInit(): void {
    this.route.params.subscribe(params => {
    this.cardId = +params['id'];
    });
    this.fetchproducts();


  }

  
  get hasNextPage() {
    return (this.currentPage * this.pageSize) < this.products.length;
  }

  fetchproducts(): void {
    console.log('the clicked category id is : ', this.cardId);
    
    this.dataService.getProducts(this.cardId).subscribe(
      (data) => {
        this.products = data;
        console.log('the products is : ', this.products); 
        this.updateDisplayedCards();
        this.calculateTotalPages();

        
      },
      (error) => {
        console.error('Error fetching data:', error);
      }
      );
      
      
    }
    
    get pageCount() {
      return (this.products.length > this.pageSize);
    }

    showNextPage() {
      this.currentPage++;
      this.updateDisplayedCards();
    }
    
    showPreviousPage() {
      this.currentPage--;
      this.updateDisplayedCards();
    }

    updateDisplayedCards() {
      const startIndex = (this.currentPage - 1) * this.pageSize;
      const endIndex = startIndex + this.pageSize;
      
      console.log('the products for using slice is this : ', this.products); 
      
      this.displayedCards = this.products.slice(startIndex, endIndex);
      
      console.log('the displayedCards, after slice is : ', this.displayedCards);
    }

    calculateTotalPages() {
      this.totalPages = Math.ceil(this.products.length / this.pageSize);
    }

  }
  