import { Component, OnInit } from '@angular/core';
import { NgIf, NgFor, JsonPipe } from '@angular/common';
import { MysqlService } from '../../services/pool.service';

@Component({
  selector: 'app-home',
  standalone: true,
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
  imports: [NgIf, NgFor, JsonPipe]
})
export class HomeComponent implements OnInit {
  constructor(private pool: MysqlService) {}
  
  sqlQuery: string = 'SELECT * FROM SEDE;';
  resultado: any = null;
  loading: boolean = false;
  error: string = '';

  ejecutarQuery() {
    this.loading = true;
    this.error = '';
    this.resultado = null;

    this.pool.executeQuery(this.sqlQuery).subscribe({
      next: (response) => {
        this.loading = false;
        
        if (response.success) {
          this.resultado = response;
          console.log('✅ Query ejecutado:', response);
          console.log('📊 Datos:', response.data); // 👈 Ver datos
        } else {
          this.error = response.error || 'Error desconocido';
        }
      },
      error: (err) => {
        this.loading = false;
        this.error = `Error de conexión: ${err.message}`;
        console.error('❌ Error:', err);
      }
    });
  }

  ejemploSelect() {
    this.sqlQuery = 'SELECT * FROM SEDE;';
    this.ejecutarQuery();
    // ❌ No hagas console.log aquí, el resultado aún no ha llegado
    // console.log(this.resultado) 
  }

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
    
    // 👇 Ejecutar query al cargar (opcional)
    // this.ejemploSelect();
  }

  trackByNombre(index: number, item: any) { return item?.nombre ?? index; }
  trackByPuesto(index: number, item: any) { return item?.puesto ?? index; }

  verPeleador(p: any) {
    console.log('Ver peleador clicked:', p);
  }
}