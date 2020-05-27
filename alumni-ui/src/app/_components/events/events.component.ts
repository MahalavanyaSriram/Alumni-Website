import { Component, OnInit, ViewChild, EventEmitter } from '@angular/core';
import { Events } from 'src/app/_model/event';
import { MatTableDataSource, MatTable, MatPaginator, MatSort, MatDialog } from '@angular/material';
import { AllService } from 'src/app/_service/all.service';
import { first } from 'rxjs/operators';

@Component({
  selector: 'app-events',
  templateUrl: './events.component.html',
  styleUrls: ['./events.component.css']
})
export class EventsComponent implements OnInit {
  displayedColumns = ['eventName','eventDescription','participate'];
  public dataSource = new MatTableDataSource<Events>();
  jobName: String;
  jobDescription: String;
  company: String;
  contactNumber: Number;
  website: String;

  @ViewChild(MatTable, { static: true }) table: MatTable<any>;
  @ViewChild(MatPaginator, {static: true}) paginator: MatPaginator;
  @ViewChild(MatSort, {static: true}) sort: MatSort;
  constructor(private allService: AllService, private dialog: MatDialog, ) {
  }
  
  ngOnInit() {
    
this.getAllEvents();
  }
  getAllEvents(): void{
    this.allService.getAllEvents()
    .subscribe(res => {
      this.dataSource.data = res as Events[];
    });
  }
  ngAfterViewInit(): void {
    this.dataSource.sort = this.sort;
    this.dataSource.paginator = this.paginator;
  }
  participate(clickevent) {
    console.log(clickevent)
    this.allService.postParticipant(clickevent.eventId)
    .pipe(first())
    .subscribe(
        data => {
          this.getAllEvents();
        },
        error => {
        
        });
  }
}
