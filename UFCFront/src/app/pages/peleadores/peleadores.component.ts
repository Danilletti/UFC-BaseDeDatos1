import { Component, OnInit } from '@angular/core';
import { NgFor, NgIf, JsonPipe } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { RouterModule, Router } from '@angular/router';
import { PeleadoresService, Peleador } from '../../services/peleadores.service';

@Component({
  selector: 'app-peleadores',
  standalone: true,
  imports: [NgFor, NgIf, FormsModule, RouterModule],
  templateUrl: './peleadores.component.html',
  styleUrls: ['./peleadores.component.css']
})
export class PeleadoresComponent implements OnInit {
  peleadores: Peleador[] = [];
  filtered: Peleador[] = [];
  query = '';
  divisionFilter: number | '' = '';
  page = 1;
  perPage = 6;
  totalPages = 1;

  divisions = [
    { id: 1, nombre: 'Ligero' },
    { id: 2, nombre: 'Welter' },
    { id: 3, nombre: 'Medio' },
    { id: 4, nombre: 'Peso Pesado' },
    { id: 5, nombre: 'Semipesado' }
  ];

  constructor(private svc: PeleadoresService, private router: Router) { }

  ngOnInit(): void {
    this.peleadores = this.svc.getAll();
    this.applyFilters();
  }

  applyFilters() {
    const q = this.query.trim().toLowerCase();
    this.filtered = this.peleadores.filter(p => {
      const matchesQuery = !q || `${p.nombre} ${p.apellido} ${p.apodo}`.toLowerCase().includes(q);
      const matchesDivision = !this.divisionFilter || p.id_division === Number(this.divisionFilter);
      return matchesQuery && matchesDivision;
    });
    this.totalPages = Math.max(1, Math.ceil(this.filtered.length / this.perPage));
    this.page = 1;
  }

  pageItems(): Peleador[] {
    const start = (this.page - 1) * this.perPage;
    return this.filtered.slice(start, start + this.perPage);
  }

  goToPage(n: number) {
    if (n < 1 || n > this.totalPages) return;
    this.page = n;
  }

  verDetalle(p: Peleador) {
    this.router.navigate(['/peleadores', p.id]);
  }

  trackById(index: number, item: Peleador) { return item.id; }

  getDivisionName(id_division: number | undefined | null): string {
    if (!id_division) return 'N/A';
    const found = this.divisions.find(d => d.id === id_division as number);
    return found ? found.nombre : 'N/A';
  }
}
