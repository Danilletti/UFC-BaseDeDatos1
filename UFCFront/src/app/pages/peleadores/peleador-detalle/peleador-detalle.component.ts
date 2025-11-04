import { Component, OnInit } from '@angular/core';
import { NgIf, JsonPipe } from '@angular/common';
import { RouterModule, ActivatedRoute, Router } from '@angular/router';
import { PeleadoresService, Peleador } from '../../../services/peleadores.service';

@Component({
  selector: 'app-peleador-detalle',
  standalone: true,
  imports: [NgIf, RouterModule],
  templateUrl: './peleador-detalle.component.html',
  styleUrls: ['./peleador-detalle.component.css']
})
export class PeleadorDetalleComponent implements OnInit {
  peleador?: Peleador;

  constructor(private route: ActivatedRoute, private svc: PeleadoresService, private router: Router) { }

  ngOnInit(): void {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    if (!id) {
      this.router.navigate(['/peleadores']);
      return;
    }
    this.peleador = this.svc.getById(id);
    if (!this.peleador) {
      this.router.navigate(['/peleadores']);
    }
  }
}
