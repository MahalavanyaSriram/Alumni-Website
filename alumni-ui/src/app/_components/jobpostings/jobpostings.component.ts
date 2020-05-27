import { Component, OnInit, ViewChild } from '@angular/core';
import { JobPostings } from 'src/app/_model/jobpostings';
import { MatTableDataSource, MatTable, MatPaginator, MatSort, MatDialog } from '@angular/material';
import { AllService } from 'src/app/_service/all.service';

@Component({
  selector: 'app-jobpostings',
  templateUrl: './jobpostings.component.html',
  styleUrls: ['./jobpostings.component.css']
})
export class JobpostingsComponent implements OnInit {

  displayedColumns = ['jobName','jobDescription','company','contactNumber','website'];
  public dataSource = new MatTableDataSource<JobPostings>();
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
    this.allService.getAllJobpostings()
    .subscribe(res => {
      this.dataSource.data = res as JobPostings[];
    });

  }
  ngAfterViewInit(): void {
    this.dataSource.sort = this.sort;
    this.dataSource.paginator = this.paginator;
  }
}
