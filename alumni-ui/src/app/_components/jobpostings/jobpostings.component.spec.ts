import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { JobpostingsComponent } from './jobpostings.component';

describe('JobpostingsComponent', () => {
  let component: JobpostingsComponent;
  let fixture: ComponentFixture<JobpostingsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ JobpostingsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(JobpostingsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
