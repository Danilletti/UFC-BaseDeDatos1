import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface SqlResponse {
  success: boolean;
  operation?: string;
  data?: any[];
  rowCount?: number;
  insertId?: number;
  affectedRows?: number;
  error?: string;
}

@Injectable({
  providedIn: 'root'
})
export class MysqlService {
  private apiUrl = 'http://localhost:3000/api';

  constructor(private http: HttpClient) {}

  executeQuery(sql: string): Observable<SqlResponse> {
    return this.http.post<SqlResponse>(`${this.apiUrl}/execute`, { sql });
  }
}