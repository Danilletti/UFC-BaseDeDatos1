import { Component, OnInit } from '@angular/core';
import { NgIf, NgFor, JsonPipe } from '@angular/common';

@Component({
  selector: 'app-home',
  standalone: true,
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
  imports: [NgIf, NgFor, JsonPipe] // 👈 agrega esto
})
export class HomeComponent implements OnInit {
  estadisticas = { peleadores: 650, eventos: 310, divisiones: 12 };

  peleadoresDestacados = [
    { nombre: "Conor McGregor", division: "Ligero", victorias: 22, derrotas: 6 },
    { nombre: "Jon Jones", division: "Semipesado", victorias: 27, derrotas: 1 }
  ];

  proximoEvento = {
    nombre: "UFC 310",
    pelea: "McGregor vs Jon Jones",
    lugar: "Las Vegas",
    fecha: "15 Nov 2025"
  };

  rankingLigero = [
    { puesto: 1, nombre: "Islam Makhachev" },
    { puesto: 2, nombre: "Charles Oliveira" },
    { puesto: 3, nombre: "Dustin Poirier" }
  ];

  ngOnInit(): void {
    console.log('estadisticas', this.estadisticas);
    console.log('peleadoresDestacados', this.peleadoresDestacados);
    console.log('rankingLigero', this.rankingLigero);
  }

  trackByNombre(index: number, item: any) { return item?.nombre ?? index; }
  trackByPuesto(index: number, item: any) { return item?.puesto ?? index; }

  verPeleador(p: any) {
    console.log('Ver peleador clicked:', p);
  }
}
