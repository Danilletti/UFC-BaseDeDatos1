import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Peleadores } from './peleadores';

describe('Peleadores', () => {
  let component: Peleadores;
  let fixture: ComponentFixture<Peleadores>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [Peleadores]
    })
    .compileComponents();

    fixture = TestBed.createComponent(Peleadores);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
