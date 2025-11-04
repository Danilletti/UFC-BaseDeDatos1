import express from 'express';
import mysql from 'mysql2';
import cors from 'cors';

const app = express();
const PORT = 3000;

// Middlewares
app.use(cors());
app.use(express.json());

// ⚙️ CONFIGURACIÓN DE MYSQL - Cambiar con tus datos
const dbConfig = {
  host: '192.168.74.128',
  port: 3306,
  user: 'root',
  password: '#Sant0Jau2',
  database: 'ufcdatabase', 
  multipleStatements: true
};

// Crear conexión
const connection = mysql.createConnection(dbConfig);

// Conectar a MySQL
connection.connect((err) => {
  if (err) {
    console.error('❌ Error conectando a MySQL:', err.message);
    process.exit(1);
  }
  console.log('✅ Conectado a MySQL');
  console.log(`📊 Base de datos: ${dbConfig.database}`);
});

// ==========================================
// ENDPOINTS
// ==========================================

// 🔹 Endpoint principal - Ejecutar cualquier SQL
app.post('/api/execute', (req, res) => {
  const { sql } = req.body;

  if (!sql) {
    return res.status(400).json({
      success: false,
      error: 'SQL query es requerido'
    });
  }

  console.log('📝 Ejecutando:', sql);

  connection.query(sql, (error, results, fields) => {
    if (error) {
      console.error('❌ Error SQL:', error.message);
      return res.status(500).json({
        success: false,
        error: error.message,
        code: error.code
      });
    }

    console.log('✅ Query ejecutado correctamente');

    // Determinar el tipo de operación
    const operation = sql.trim().split(' ')[0].toUpperCase();
    
    res.json({
      success: true,
      operation: operation,
      data: results,
      rowCount: Array.isArray(results) ? results.length : results.affectedRows,
      insertId: results.insertId || null,
      affectedRows: results.affectedRows || 0,
      fields: fields || null
    });
  });
});

// ==========================================
// MANEJO DE ERRORES Y CIERRE
// ==========================================

// Manejar cierre de conexión
process.on('SIGINT', () => {
  console.log('\n⏹️  Cerrando conexión a MySQL...');
  connection.end((err) => {
    if (err) {
      console.error('Error cerrando conexión:', err);
    }
    console.log('👋 Conexión cerrada');
    process.exit(0);
  });
});

// Iniciar servidor
app.listen(PORT, () => {
  console.log('╔════════════════════════════════════════╗');
  console.log('║  🚀 Servidor MySQL API corriendo       ║');
  console.log('╚════════════════════════════════════════╝');
  console.log(`📍 URL: http://localhost:${PORT}`);
  console.log(`📊 Base de datos: ${dbConfig.database}`);
  console.log('');
  console.log('📡 Endpoints disponibles:');
  console.log('  POST   /api/execute          - Ejecutar SQL');
  console.log('✅ Listo para recibir peticiones');
});
