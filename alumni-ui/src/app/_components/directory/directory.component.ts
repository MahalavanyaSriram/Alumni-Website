import { Component, OnInit, ViewChild } from '@angular/core';
import { MatTableDataSource, MatTable, MatPaginator, MatSort, MatDialog } from '@angular/material';
import { Alumni } from 'src/app/_model/alumni';
import { AllService } from 'src/app/_service/all.service';
import { Alumnis } from 'src/app/_model/alumnis';
import { first } from 'rxjs/operators';

@Component({
  selector: 'app-directory',
  templateUrl: './directory.component.html',
  styleUrls: ['./directory.component.css']
})
export class DirectoryComponent implements OnInit {

  displayedColumns = ['alumniName','alumniWorkPlace','industry','experience','graduationYear','alumniEmail','follow'];
  public dataSource = new MatTableDataSource<Alumnis>();
  obj: any = {};

  @ViewChild(MatTable, { static: true }) table: MatTable<any>;
  @ViewChild(MatPaginator, {static: true}) paginator: MatPaginator;
  @ViewChild(MatSort, {static: true}) sort: MatSort;

  constructor(private allService: AllService, private dialog: MatDialog, ) {
  }
  
  ngOnInit() {
this.getAllAlumni();

  }
  getAllAlumni(): void{
    this.allService.getAllAlumni()
    .subscribe(res => {
      this.dataSource.data = res as Alumnis[];
    });
  }
  ngAfterViewInit(): void {
    this.dataSource.sort = this.sort;
    this.dataSource.paginator = this.paginator;
  }
  follow(clickevent) {
    console.log(clickevent)
    this.allService.postFollow(clickevent.alumniId)
    .pipe(first())
    .subscribe(
        data => {
          clickevent.followedByUser = true;
        },
        error => {
        
        });
  }
}
