import { Routes } from '@angular/router';

export const routes: Routes = [
  {
    path: '',
    loadComponent: () =>
      import('./pages/home/home.component').then((m) => m.HomeComponent),
  },
  {
    path: 'peleadores',
    loadComponent: () =>
      import('./pages/peleadores/peleadores.component').then((m) => m.PeleadoresComponent),
  },
  {
    path: 'peleadores/:id',
    loadComponent: () =>
      import('./pages/peleadores/peleador-detalle/peleador-detalle.component').then((m) => m.PeleadorDetalleComponent),
  },
  {
    path: 'eventos',
    loadComponent: () =>
      import('./pages/eventos/eventos.component').then((m) => m.EventosComponent),
  },
  {
    path: 'rankings',
    loadComponent: () =>
      import('./pages/rankings/rankings.component').then((m) => m.RankingsComponent),
  },
  {
    path: 'estadisticas',
    loadComponent: () =>
      import('./pages/estadisticas/estadisticas.component').then((m) => m.EstadisticasComponent),
  }
];
