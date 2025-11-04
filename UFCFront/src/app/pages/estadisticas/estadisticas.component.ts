import { Component, OnInit } from '@angular/core';
import { CommonModule, NgIf, NgFor, JsonPipe } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';
import * as XLSX from 'xlsx';
import { MysqlService } from '../../services/pool.service';

@Component({
  selector: 'app-estadisticas',
  standalone: true,
  imports: [CommonModule, NgIf, NgFor, JsonPipe, FormsModule, RouterModule],
  templateUrl: './estadisticas.component.html',
  styleUrls: ['./estadisticas.component.css']
})
export class EstadisticasComponent implements OnInit {
  constructor(private pool: MysqlService) { }

  // Estado principal
  selectedDataset = 'peleadores';
  resultados = [
    { key: 'peleadores', label: 'Peleadores' },
    { key: 'pelea', label: 'Pelea' },
    { key: 'sedes', label: 'Sedes' }
  ];

  rawData: any[] = [];
  columnas: string[] = [];
  loading = false;
  error = '';

  // Filtros
  searchTerm = '';
  campoFiltro = '';
  valorFiltro = '';

  // Campo nuevo: consulta SQL libre
  customSQL = '';

  ngOnInit(): void {
    this.ejecutarQuery();
  }

  ejecutarQuery() {
    this.loading = true;
    this.error = '';
    this.rawData = [];

    let query = '';
    switch (this.selectedDataset) {
      case 'peleadores': query = 'SELECT * FROM PELEADOR;'; break;
      case 'pelea': query = 'SELECT * FROM PELEA;'; break;
      case 'sedes': query = 'SELECT * FROM SEDE;'; break;
      default: query = 'SELECT * FROM PELEADOR;';
    }

    this.pool.executeQuery(query).subscribe({
      next: (response) => {
        this.loading = false;
        if (response.success) {
          this.rawData = response.data || [];
          this.postProcessData();
        } else {
          this.error = response.error || 'Error desconocido';
        }
      },
      error: (err) => {
        this.loading = false;
        this.error = `Error de conexión: ${err.message}`;
      }
    });
  }

  aplicarFiltros() {
    let where = '';
    const filtros = [];

    if (this.searchTerm) {
      filtros.push(`CONCAT_WS(' ', ${this.columnas.join(', ')}) LIKE '%${this.searchTerm}%'`);
    }
    if (this.campoFiltro && this.valorFiltro) {
      filtros.push(`${this.campoFiltro} LIKE '%${this.valorFiltro}%'`);
    }

    if (filtros.length > 0) {
      where = 'WHERE ' + filtros.join(' AND ');
    }

    let baseTable = 'PELEADOR';
    switch (this.selectedDataset) {
      case 'peleadores': baseTable = 'PELEADOR'; break;
      case 'pelea': baseTable = 'PELEA'; break;
      case 'sedes': baseTable = 'SEDE'; break;
    }

    const query = `SELECT * FROM ${baseTable} ${where};`;
    console.log('🔍 Query filtrado:', query);

    this.loading = true;
    this.pool.executeQuery(query).subscribe({
      next: (response) => {
        this.loading = false;
        if (response.success) {
          this.rawData = response.data || [];
          this.postProcessData();
        } else {
          this.error = response.error || 'Error desconocido';
        }
      },
      error: (err) => {
        this.loading = false;
        this.error = `Error de conexión: ${err.message}`;
      }
    });
  }

  // 🚀 Nuevo: ejecutar consulta personalizada
  ejecutarCustomSQL() {
    if (!this.customSQL.trim()) {
      alert('Por favor ingrese una sentencia SQL.');
      return;
    }

    this.loading = true;
    this.error = '';
    this.rawData = [];

    console.log('🧠 Ejecutando SQL personalizado:', this.customSQL);

    this.pool.executeQuery(this.customSQL).subscribe({
      next: (response) => {
        this.loading = false;
        if (response.success) {
          this.rawData = response.data || [];
          this.postProcessData();
        } else {
          this.error = response.error || 'Error en la consulta SQL';
        }
      },
      error: (err) => {
        this.loading = false;
        this.error = `Error al ejecutar SQL: ${err.message}`;
      }
    });
  }

  onDatasetChange() {
    this.ejecutarQuery();
  }

  postProcessData() {
    const cols = new Set<string>();
    this.rawData.forEach(item => {
      Object.keys(item || {}).forEach(k => cols.add(k));
    });
    this.columnas = Array.from(cols);
  }

  exportarExcel() {
    if (!this.rawData || this.rawData.length === 0) {
      alert('No hay datos para exportar.');
      return;
    }
    const hoja = XLSX.utils.json_to_sheet(this.rawData);
    const libro = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(libro, hoja, 'Datos');
    XLSX.writeFile(libro, `estadisticas_${this.selectedDataset}.xlsx`);
  }
}
