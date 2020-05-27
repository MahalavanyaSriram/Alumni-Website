import { Component, OnInit } from '@angular/core';
import { AllService } from 'src/app/_service/all.service';
import { Alumni } from 'src/app/_model/alumni';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit {
  alumni:Alumni;
  constructor(private allService:AllService) { }

  ngOnInit() {
    this.allService.getUserDetails().subscribe(res => {
      this.alumni = res as Alumni;
    });
  }

}
