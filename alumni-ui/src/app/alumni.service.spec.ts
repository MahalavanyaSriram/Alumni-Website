import { TestBed } from '@angular/core/testing';

import { AlumniService } from './alumni.service';

describe('AlumniService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AlumniService = TestBed.get(AlumniService);
    expect(service).toBeTruthy();
  });
});
