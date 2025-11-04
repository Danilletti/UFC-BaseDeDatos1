import { Injectable } from '@angular/core';
import { createPool, Pool, RowDataPacket } from 'mysql2/promise';

@Injectable({
  providedIn: 'root'
})
export class ConnectionService {
  private pool: Pool = createPool({
    host: 'localhost',
    user: 'your_username',
    password: 'your_password',
    database: 'your_database',
    connectionLimit: 5
  });


}
