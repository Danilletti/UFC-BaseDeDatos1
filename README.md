# UFC Database

Sistema de gestión de base de datos relacional diseñado para almacenar y consultar información completa sobre eventos, peleadores, peleas, rankings y todo el ecosistema relacionado con la Ultimate Fighting Championship (UFC).

## 📋 Características

Este proyecto permite:

- ✅ Consultar información de peleadores y sus divisiones
- ✅ Ver registros de eventos y sus sedes
- ✅ Almacenar estadísticas detalladas de combates
- ✅ Averiguar sobre equipos de entrenadores, médicos y patrocinadores
- ✅ Mantener rankings actualizados por división

## 📊 Contenido de la Base de Datos

La base de datos incluye las siguientes tablas:

| Tabla | Registros | Descripción |
|-------|-----------|-------------|
| **Peleadores** | 45 | Competidores activos |
| **Eventos** | 15 | Eventos principales de UFC |
| **Peleas** | 20 | Combates registrados |
| **Sedes** | 15 | Instalaciones internacionales |
| **Divisiones** | 9 | Categorías de peso (masculino y femenino) |
| **Árbitros y Jueces** | 15 | Cuerpos de valoración y gestión de resultados |
| **Equipos** | - | Entrenadores, médicos y patrocinadores |

**Total:** 200+ registros distribuidos en 12 tablas

## ⚙️ Requisitos Previos

### Software necesario

- **MySQL Server 8.0 o superior**
- **MySQL Workbench** (opcional, pero recomendado para gestión visual)
- **Cliente de línea de comandos MySQL** (incluido con la instalación de MySQL)
- Acceso completo a modificación de la base de datos

## 📁 Estructura de Archivos

```
/
├── CreacionTablas.sql    # Script de creación de tablas
├── InsercionDatos.sql    # Script de inserción de registros
└── README.md             # Presente archivo
```

## 📝 Descripción de Scripts

### a. CreacionTablas.sql

**Propósito:** Crea la estructura completa de la base de datos

**Contenido:**
- Creación de la base de datos `ufcdatabase`
- Definición de 12 tablas con sus columnas y tipos de datos
- Implementación de todas los CONSTRAINT (PRIMARY KEY, FOREIGN KEY, etc.)

### b. InsercionDatos.sql

**Propósito:** Pobla la base de datos con datos de prueba

**Contenido:**
- 200+ registros distribuidos en todas las tablas
- Datos realistas tomados de los registros oficiales de UFC

## 🚀 Instrucciones de Instalación

### Opción 1: Usando MySQL Workbench (Recomendado)

1. **Abrir MySQL Workbench**
   - Conectarse a tu servidor MySQL local o remoto

2. **Ejecutar script de creación**
   ```
   File → Open SQL Script → Seleccionar "CreacionTablas.sql"
   Click en el icono de rayo ⚡ para ejecutar
   ```

3. **Ejecutar script de inserción**
   ```
   File → Open SQL Script → Seleccionar "InsercionDatos.sql"
   Click en el icono de rayo ⚡ para ejecutar
   ```

4. **Verificar instalación**
   - Refrescar la lista de bases de datos
   - Expandir `ufcdatabase` para ver las tablas creadas

### Opción 2: Usando línea de comandos

```bash
# Conectarse a MySQL
mysql -u root -p

# Ejecutar script de creación
source /ruta/a/CreacionTablas.sql

# Ejecutar script de inserción
source /ruta/a/InsercionDatos.sql

# Verificar instalación
USE ufcdatabase;
SHOW TABLES;
```

> ⚠️ **IMPORTANTE:** SIEMPRE ejecutar los scripts en este orden:
> 1. Primero: `CreacionTablas.sql`
> 2. Segundo: `InsercionDatos.sql`

## 🏗️ Estructura de la Base de Datos

### Tablas sin dependencias

- **SEDE:** Instalaciones donde se realizan los eventos de UFC
- **DIVISION:** Categorías de peso
- **ARBITRO:** Oficiales que dirigen las peleas

### Tablas con 1 nivel de dependencia

- **RANKING:** Rankings por división
- **EVENTO:** Eventos de UFC en sedes específicas
- **PELEADOR:** Competidores clasificados en divisiones

### Tablas con 2 niveles de dependencia

- **ENTRENADOR:** Equipos de entrenamiento de los peleadores
- **PATROCINADOR:** Marcas que patrocinan a los peleadores
- **EQUIPO_MEDICO:** Personal médico asignado a los peleadores
- **PELEA:** Combates entre peleadores en eventos

### Tablas con 3 niveles de dependencia

- **JUEZ:** Jueces que registran estadísticas en base a las peleas
- **ESTADISTICA:** Métricas detalladas de cada pelea y están asociadas a un juez

## 🔄 Diagrama de Relaciones

```
SEDE ──┐
       ├─→ EVENTO ──→ PELEA ──┐
DIVISION ─────────────────────┤
       ├─→ PELEADOR ──────────┤
       │      │                │
       │      ├─→ ENTRENADOR   │
       │      ├─→ PATROCINADOR │
       │      └─→ EQUIPO_MEDICO│
       │                       │
       └─→ RANKING             │
                               ├─→ JUEZ ←→ ESTADISTICA
ARBITRO ───────────────────────┘
```

## ⚠️ Notas Importantes

### Dependencias Circulares

Las tablas **JUEZ** y **ESTADISTICA** tienen una dependencia circular que se gestiona de la siguiente manera:

1. Se crea JUEZ con `ID_ESTADISTICA = NULL`
2. Se crea ESTADISTICA con referencia a JUEZ
3. Se actualiza JUEZ con los valores de `ID_ESTADISTICA`

### Charset y Collation

La base de datos usa:

- **Charset:** `utf8mb4` (soporte completo de Unicode)
- **Collation:** `utf8mb4_0900_ai_ci` (no case-sensitive, no accent-sensitive)

Esto permite almacenar correctamente caracteres especiales como tildes y ñ.

## 🔧 Solución de Problemas Frecuentes

### Error: "Database already exists"

**Solución:** El script ya incluye `CREATE DATABASE IF NOT EXISTS`, pero si necesitas recrear, ejecuta:

```sql
DROP DATABASE IF EXISTS ufcdatabase;
```

Luego ejecuta `CreacionTablas.sql` nuevamente.

### Error: "Foreign key constraint fails"

**Causa:** Scripts ejecutados en orden incorrecto o tabla padre no existe.

**Solución:**
1. Eliminar la base de datos completa
2. Ejecutar `CreacionTablas.sql` primero
3. Ejecutar `InsercionDatos.sql` después

### Error: "Access denied"

**Solución:** Verifica que tu usuario MySQL tenga los permisos necesarios:

```sql
GRANT ALL PRIVILEGES ON ufcdatabase.* TO 'tu_usuario'@'localhost';
FLUSH PRIVILEGES;
```

## 📞 Contacto

Para preguntas, problemas o sugerencias sobre este proyecto:

- Revisar la documentación SQL incluida en los scripts
- Verificar los logs de error de MySQL
- Consultar la [documentación oficial de MySQL 8.0](https://dev.mysql.com/doc/refman/8.0/en/)

## 📄 Licencia y Uso

Este proyecto es de **uso académico/educativo**. Los datos son ficticios y no representan información oficial de UFC.

## ✅ Resumen de Pasos de Instalación

- [ ] MySQL 8.0 instalado y funcionando
- [ ] Scripts descargados en carpeta local
- [ ] Usuario MySQL con permisos adecuados
- [ ] Script `CreacionTablas.sql` ejecutado exitosamente
- [ ] Script `InsercionDatos.sql` ejecutado exitosamente
- [ ] Base de datos lista para usar

## 🎯 Consultas de Ejemplo

```sql
-- Ver todos los peleadores por división
SELECT p.nombre, d.nombre AS division 
FROM peleador p 
JOIN division d ON p.id_division = d.id_division;

-- Eventos próximos
SELECT * FROM evento 
WHERE fecha >= CURDATE() 
ORDER BY fecha;

-- Top 10 peleadores por victorias
SELECT p.nombre, e.victorias, e.derrotas 
FROM peleador p 
JOIN estadistica e ON p.id_peleador = e.id_peleador 
ORDER BY e.victorias DESC 
LIMIT 10;
```

---

**Desarrollado para fines educativos** | **MySQL 8.0+** | **UTF-8 Compatible**
