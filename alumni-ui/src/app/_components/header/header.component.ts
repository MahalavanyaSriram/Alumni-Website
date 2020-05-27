import { Component, OnInit } from '@angular/core';
import { AllService } from '../../_service/all.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  constructor( public allService : AllService, private router:Router ) { }
  displayStatus:boolean;
  ngOnInit() {
  }
  logout() {
    this.allService.logout();
    this.router.navigate(['/login']);
}

}
