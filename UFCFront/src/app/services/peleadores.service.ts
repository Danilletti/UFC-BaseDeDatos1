import { Injectable } from '@angular/core';

export interface Peleador {
  id: number;
  nombre: string;
  apellido: string;
  apodo?: string;
  fecha_nacimiento?: string;
  ciudad_residencia?: string;
  nacionalidad?: string;
  estatura_cm?: number;
  peso_kg?: number;
  alcance_cm?: number;
  estilo_principal?: string;
  mano_predominante?: string;
  debut_profesional?: string;
  record_victorias?: number;
  record_derrotas?: number;
  record_empates?: number;
  record_no_contest?: number;
  estado?: string;
  id_division?: number;
  id_equipo?: number;
  imagen?: string;
}

@Injectable({
  providedIn: 'root'
})
export class PeleadoresService {
  private peleadores: Peleador[] = [
    {
      id: 1,
      nombre: 'Conor',
      apellido: 'McGregor',
      apodo: 'The Notorious',
      fecha_nacimiento: '1988-07-14',
      ciudad_residencia: 'Dublin',
      nacionalidad: 'Irlanda',
      estatura_cm: 175,
      peso_kg: 70.0,
      alcance_cm: 188,
      estilo_principal: 'Boxeo / Kickboxing',
      mano_predominante: 'Izquierda',
      debut_profesional: '2008-11-27',
      record_victorias: 22,
      record_derrotas: 6,
      record_empates: 0,
      record_no_contest: 0,
      estado: 'Activo',
      id_division: 1,
      id_equipo: 1,
      imagen: '../../assets/imgs/Conor.jpg'
    },
    {
      id: 2,
      nombre: 'Jon',
      apellido: 'Jones',
      apodo: 'Bones',
      fecha_nacimiento: '1987-07-19',
      ciudad_residencia: 'Rochester',
      nacionalidad: 'USA',
      estatura_cm: 193,
      peso_kg: 93.0,
      alcance_cm: 213,
      estilo_principal: 'Wrestling / Jiu-Jitsu',
      mano_predominante: 'Derecha',
      debut_profesional: '2008-04-12',
      record_victorias: 27,
      record_derrotas: 1,
      record_empates: 0,
      record_no_contest: 0,
      estado: 'Activo',
      id_division: 5,
      id_equipo: 2,
      imagen: '../assets/imgs/Jon.jpg'
    },
    {
      id: 3,
      nombre: 'Islam',
      apellido: 'Makhachev',
      apodo: '',
      fecha_nacimiento: '1991-09-27',
      ciudad_residencia: 'Makhachkala',
      nacionalidad: 'Rusia',
      estatura_cm: 178,
      peso_kg: 70.0,
      alcance_cm: 178,
      estilo_principal: 'Sambo / Sambo de combate',
      mano_predominante: 'Derecha',
      debut_profesional: '2010-11-10',
      record_victorias: 24,
      record_derrotas: 1,
      record_empates: 0,
      record_no_contest: 0,
      estado: 'Activo',
      id_division: 1,
      id_equipo: 3,
      imagen: '../../assets/imgs/Islam.png'
    }
  ];

  getAll(): Peleador[] {
    return [...this.peleadores];
  }

  getById(id: number): Peleador | undefined {
    return this.peleadores.find(p => p.id === id);
  }
}
