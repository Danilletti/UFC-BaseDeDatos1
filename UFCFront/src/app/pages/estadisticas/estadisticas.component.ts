// src/app/components/estadisticas/estadisticas.component.ts
import { Component, OnInit } from '@angular/core';
import { NgIf, NgFor, JsonPipe, CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import * as XLSX from 'xlsx';
import { RouterModule } from '@angular/router';

@Component({
  selector: 'app-estadisticas',
  standalone: true,
  imports: [CommonModule, NgIf, NgFor, JsonPipe, FormsModule, RouterModule],
  templateUrl: './estadisticas.component.html',
  styleUrls: ['./estadisticas.component.css']
})
export class EstadisticasComponent implements OnInit {
  // Configura aquí la URL base de la base de datos
  API_BASE = 'http://localhost:3000';

  // datasets disponibles (se usarán como endpoints: /api/peleadores, /api/eventos, ...)
  datasets = [
    { key: 'peleadores', label: 'Peleadores' },
    { key: 'eventos', label: 'Eventos' },
    { key: 'rankings', label: 'Rankings' },
    { key: 'divisiones', label: 'Divisiones' },
  ];

  // estado
  selectedDataset = 'peleadores';
  rawData: any[] = [];         // datos sin filtrar
  datosFiltrados: any[] = [];  // datos mostrados en la tabla
  columnas: string[] = [];     // cabeceras (keys calculadas)
  searchTerm = '';             // búsqueda global
  campoFiltro = '';            // campo para filtro puntual
  valorFiltro = '';            // valor para filtro puntual

  cargando = false;
  errorMsg = '';

  constructor(private http: HttpClient) { }

  ngOnInit(): void {
    this.cargarDataset(this.selectedDataset);
  }

  // cargar desde API (o fallback a arreglo vacío)
  cargarDataset(datasetKey: string) {
    this.cargando = true;
    this.errorMsg = '';
    const url = `${this.API_BASE}/${datasetKey}`;
    this.http.get<any[]>(url).subscribe({
      next: (res) => {
        this.rawData = Array.isArray(res) ? res : [];
        this.postProcessData();
        this.cargando = false;
      },
      error: (err) => {
        console.error('Error al cargar dataset', url, err);
        this.errorMsg = `No se pudo cargar ${datasetKey} (revisa backend / CORS).`;
        // mantener rawData vacío y limpiar vista
        this.rawData = [];
        this.postProcessData();
        this.cargando = false;
      }
    });
  }

  // después de cargar: sacar columnas y aplicar filtros
  postProcessData() {
    // columnas: unión de todas las keys de los objetos (orden simple)
    const cols = new Set<string>();
    this.rawData.forEach(item => {
      Object.keys(item || {}).forEach(k => cols.add(k));
    });
    this.columnas = Array.from(cols);
    // si no hay datos, ponemos columnas por defecto para que la UI no se rompa
    if (this.columnas.length === 0 && this.rawData.length === 0) {
      this.columnas = ['(sin datos)'];
    }
    // recalc
    this.aplicarFiltros();
  }

  // aplicar filtros: búsqueda global y campo específico
  aplicarFiltros() {
    const term = (this.searchTerm || '').toLowerCase().trim();
    this.datosFiltrados = this.rawData.filter(item => {
      let okTerm = true;
      let okCampo = true;

      if (term) {
        // búsqueda global: buscar term en cualquier valor string/number
        okTerm = Object.values(item).some(v => {
          if (v === null || v === undefined) return false;
          return String(v).toLowerCase().includes(term);
        });
      }

      if (this.campoFiltro && this.valorFiltro !== '') {
        const val = item[this.campoFiltro];
        okCampo = val !== undefined && val !== null && String(val).toLowerCase().includes(String(this.valorFiltro).toLowerCase());
      }

      return okTerm && okCampo;
    });
  }

  // cambiar dataset (select)
  onDatasetChange() {
    this.cargarDataset(this.selectedDataset);
  }

  // exportar lo filtrado a Excel
  exportarExcel() {
    if (!this.datosFiltrados || this.datosFiltrados.length === 0) {
      alert('No hay datos para exportar con el filtro actual.');
      return;
    }
    const hoja = XLSX.utils.json_to_sheet(this.datosFiltrados);
    const libro = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(libro, hoja, 'Datos');
    const filename = `estadisticas_${this.selectedDataset}_${new Date().toISOString().slice(0, 19).replace(/[:T]/g, '-')}.xlsx`;
    XLSX.writeFile(libro, filename);
  }

  // util: devolver primeras N filas para vista previa (opcional)
  previewRows(n = 50) {
    return this.datosFiltrados.slice(0, n);
  }
}
