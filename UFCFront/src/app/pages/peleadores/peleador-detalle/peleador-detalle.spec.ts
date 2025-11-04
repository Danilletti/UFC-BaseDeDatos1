import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PeleadorDetalle } from './peleador-detalle.component';

describe('PeleadorDetalle', () => {
  let component: PeleadorDetalle;
  let fixture: ComponentFixture<PeleadorDetalle>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [PeleadorDetalle]
    })
      .compileComponents();

    fixture = TestBed.createComponent(PeleadorDetalle);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
