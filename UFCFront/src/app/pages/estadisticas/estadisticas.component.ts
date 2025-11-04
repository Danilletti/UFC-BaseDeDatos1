// src/app/components/estadisticas/estadisticas.component.ts
import { Component, OnInit } from '@angular/core';
import { NgIf, NgFor, JsonPipe, CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import * as XLSX from 'xlsx';
import { RouterModule } from '@angular/router';
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
  sqlQuery: string = 'SELECT * FROM PELEADOR;';
  resultado: any = null;
  loading: boolean = false;
  error: string = '';

  resultados = [
    { key: 'peleadores', label: 'Peleadores' },
    { key: 'combates', label: 'Combates' },
    { key: 'sedes', label: 'Sedes' }
  ];

  ejecutarQuery() {
    this.loading = true;
    this.error = '';
    this.resultado = null;

    let query = '';
    switch (this.resultado) {
      case 'peleadores':
        query = 'SELECT * FROM PELEADOR;';
        break;
      case 'combates':
        query = 'SELECT * FROM COMBATE;';
        break;
      case 'sedes':
        query = 'SELECT * FROM SEDE;';
        break;
      default:
        query = 'SELECT * FROM SEDE;';
    }

    this.pool.executeQuery(query).subscribe({
      next: (response) => {
        this.loading = false;
        if (response.success) {
          this.resultado = response.data; // 👈 importante: guarda los datos, no todo el objeto
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


  // estado
  selectedDataset = 'peleador';
  rawData: any[] = [];         // datos sin filtrar
  datosFiltrados: any[] = [];  // datos mostrados en la tabla
  columnas: string[] = [];     // cabeceras (keys calculadas)
  searchTerm = '';             // búsqueda global
  campoFiltro = '';            // campo para filtro puntual
  valorFiltro = '';            // valor para filtro puntual

  cargando = false;
  errorMsg = '';


  ngOnInit(): void {
    this.ejecutarQuery();
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
    this.ejecutarQuery();
  }

  exportarExcel() {
    if (!this.resultado || this.resultado.length === 0) {
      alert('No hay datos para exportar con el filtro actual.');
      return;
    }
    const hoja = XLSX.utils.json_to_sheet(this.resultado);
    const libro = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(libro, hoja, 'Datos');
    const filename = `estadisticas.xlsx`;
    XLSX.writeFile(libro, filename);
  }


  // util: devolver primeras N filas para vista previa (opcional)
  previewRows(n = 50) {
    return this.resultado.slice(0, n);
  }
}
