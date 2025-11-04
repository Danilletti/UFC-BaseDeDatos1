-- ============================================================
-- UFC DATABASE - SCRIPTS DE CREACIÓN DE TABLAS
-- RDBMS: MySQL 8.0
-- Incluye todos los CONSTRAINTS en CREATE TABLE
-- ============================================================

-- Crear base de datos
CREATE DATABASE IF NOT EXISTS `ufcdatabase` 
DEFAULT CHARACTER SET utf8mb4 
COLLATE utf8mb4_0900_ai_ci;

USE `ufcdatabase`;

-- ============================================================
-- CREACIÓN DE TABLAS SIN DEPENDENCIAS (Sin Foreign Keys)
-- ============================================================

-- ------------------------------------------------------------
-- Tabla: SEDE
-- ------------------------------------------------------------
CREATE TABLE SEDE (
    ID_SEDE             INT PRIMARY KEY,
    NOMBRE_SEDE         VARCHAR(50) NOT NULL,
    CIUDAD              VARCHAR(50) NOT NULL,
    ESTADO_PROVINCIA    VARCHAR(50),
    PAIS                VARCHAR(50) NOT NULL,
    CAPACIDAD           INT NOT NULL,
    DIRECCION           VARCHAR(100),
    TIPO_SEDE           VARCHAR(30),
    ADMINISTRADOR       VARCHAR(50),
    ANO_INAUGURACION    INT
);

-- ------------------------------------------------------------
-- Tabla: DIVISION
-- ------------------------------------------------------------
CREATE TABLE DIVISION (
    ID_DIVISION         INT PRIMARY KEY,
    NOMBRE_DIVISION     VARCHAR(50) NOT NULL,
    LIMITE_MIN_HG       DECIMAL(5,2),
    LIMITE_MAX_HG       DECIMAL(5,2),
    GENERO              CHAR(1),
    CAMPEON_ACTUAL      VARCHAR(50)
);

-- ------------------------------------------------------------
-- Tabla: ARBITRO
-- ------------------------------------------------------------
CREATE TABLE ARBITRO (
    ID_ARBITRO              INT PRIMARY KEY,
    PRIMER_NOMBRE           VARCHAR(30) NOT NULL,
    PRIMER_APELLIDO         VARCHAR(30) NOT NULL,
    NACIONALIDAD            VARCHAR(50),
    ANOS_EXPERIENCIA        INT,
    CERTIFICACION           VARCHAR(50),
    NUM_PELEAS_DIRIGIDAS    INT,
    ESPECIALIDAD            VARCHAR(50)
);

-- ============================================================
-- TABLAS CON 1 NIVEL DE DEPENDENCIA
-- ============================================================

-- ------------------------------------------------------------
-- Tabla: RANKING (depende de DIVISION)
-- ------------------------------------------------------------
CREATE TABLE RANKING (
    ID_RANKING              INT PRIMARY KEY,
    POSICION                INT NOT NULL,
    FECHA_ACTUALIZACION     DATE,
    PUNTOS                  INT,
    ID_DIVISION             INT,
    CONSTRAINT ranking_division_fk FOREIGN KEY (ID_DIVISION)
        REFERENCES DIVISION(ID_DIVISION)
);

-- ------------------------------------------------------------
-- Tabla: EVENTO (depende de SEDE)
-- ------------------------------------------------------------
CREATE TABLE EVENTO (
    ID_EVENTO           INT PRIMARY KEY,
    NOMBRE_EVENTO       VARCHAR(100) NOT NULL,
    FECHA_EVENTO        DATE NOT NULL,
    TIPO_EVENTO         VARCHAR(50),
    HORA_INICIO         TIME,
    PUBLICO_ASISTENTE   INT,
    INGRESOS_ESTIMADOS  DECIMAL(12,2),
    POSTER_EVENTO       VARCHAR(200),
    ID_SEDE             INT,
    CONSTRAINT evento_sede_fk FOREIGN KEY (ID_SEDE)
        REFERENCES SEDE(ID_SEDE)
);

-- ------------------------------------------------------------
-- Tabla: PELEADOR (depende de DIVISION)
-- ------------------------------------------------------------
CREATE TABLE PELEADOR (
    ID_PELEADOR         INT PRIMARY KEY,
    NOMBRE              VARCHAR(30) NOT NULL,
    APELLIDO            VARCHAR(30) NOT NULL,
    APODO               VARCHAR(50),
    FECHA_NACIMIENTO    DATE,
    CIUDAD_RESIDENCIA   VARCHAR(50),
    NACIONALIDAD        VARCHAR(50),
    ESTATURA_CM         DECIMAL(5,2),
    PESO_KG             DECIMAL(5,2),
    ALCANCE_CM          DECIMAL(5,2),
    ESTILO_PRINCIPAL    VARCHAR(50),
    MANO_PREDOMINANTE   VARCHAR(20),
    FECHA_DEBUT_PRO     DATE,
    RECORD_VICTORIAS    VARCHAR(100),
    RECORD_DERROTAS     INT,
    RECORD_EMPATES      INT,
    RECORD_NO_CONTEST   INT,
    ESTADO              VARCHAR(20),
    EDAD                INT,
    ID_DIVISION         INT,
    CONSTRAINT peleador_division_fk FOREIGN KEY (ID_DIVISION)
        REFERENCES DIVISION(ID_DIVISION)
);

-- ============================================================
-- TABLAS CON 2 NIVELES DE DEPENDENCIA
-- ============================================================

-- ------------------------------------------------------------
-- Tabla: ENTRENADOR (depende de PELEADOR)
-- ------------------------------------------------------------
CREATE TABLE ENTRENADOR (
    ID_EQUIPO           INT PRIMARY KEY,
    ANO_FUNDACION       INT,
    NOMBRE_EQUIPO       VARCHAR(50) NOT NULL,
    CIUDAD              VARCHAR(50),
    ESPECIALIDAD        VARCHAR(50),
    PRIMER_NOMBRE       VARCHAR(30),
    PRIMER_APELLIDO     VARCHAR(30),
    ID_PELEADOR         INT,
    CONSTRAINT entrenador_peleador_fk FOREIGN KEY (ID_PELEADOR)
        REFERENCES PELEADOR(ID_PELEADOR)
);

-- ------------------------------------------------------------
-- Tabla: PATROCINADOR (depende de PELEADOR)
-- ------------------------------------------------------------
CREATE TABLE PATROCINADOR (
    ID_EQUIPO           INT PRIMARY KEY,
    ANO_FUNDACION       INT,
    NOMBRE_EQUIPO       VARCHAR(50) NOT NULL,
    CIUDAD              VARCHAR(50),
    NOMBRE_MARCA        VARCHAR(50),
    ID_PELEADOR         INT,
    CONSTRAINT patrocinador_peleador_fk FOREIGN KEY (ID_PELEADOR)
        REFERENCES PELEADOR(ID_PELEADOR)
);

-- ------------------------------------------------------------
-- Tabla: EQUIPO_MEDICO (depende de PELEADOR)
-- ------------------------------------------------------------
CREATE TABLE EQUIPO_MEDICO (
    ID_EQUIPO               INT PRIMARY KEY,
    ANO_FUNDACION           INT,
    NOMBRE_EQUIPO           VARCHAR(50) NOT NULL,
    CIUDAD                  VARCHAR(50),
    PRIMER_NOMBRE           VARCHAR(30),
    PRIMER_APELLIDO         VARCHAR(30),
    ESPECIALIDAD_MEDICA     VARCHAR(50),
    ID_PELEADOR             INT,
    CONSTRAINT equipo_medico_peleador_fk FOREIGN KEY (ID_PELEADOR)
        REFERENCES PELEADOR(ID_PELEADOR)
);

-- ------------------------------------------------------------
-- Tabla: PELEA (depende de PELEADOR, EVENTO, ARBITRO)
-- ------------------------------------------------------------
CREATE TABLE PELEA (
    ID_PELEA                INT PRIMARY KEY,
    ESTELAR                 CHAR(1),
    RONDA_PROGRAMADA        INT,
    RONDA_FINALIZADA        INT,
    METODO_VICTORIA         VARCHAR(50),
    TIEMPO_FINALIZACION     TIME,
    ID_PELEADOR             INT,
    ID_EVENTO               INT,
    ID_ARBITRO              INT,
    CONSTRAINT pelea_peleador_fk FOREIGN KEY (ID_PELEADOR)
        REFERENCES PELEADOR(ID_PELEADOR),
    CONSTRAINT pelea_evento_fk FOREIGN KEY (ID_EVENTO)
        REFERENCES EVENTO(ID_EVENTO),
    CONSTRAINT pelea_arbitro_fk FOREIGN KEY (ID_ARBITRO)
        REFERENCES ARBITRO(ID_ARBITRO)
);

-- ============================================================
-- TABLAS CON 3 NIVELES DE DEPENDENCIA
-- ============================================================

-- ------------------------------------------------------------
-- Tabla: JUEZ (independiente para evitar ciclo con ESTADISTICA)
-- ------------------------------------------------------------
CREATE TABLE JUEZ (
    ID_JUEZ                 INT PRIMARY KEY,
    PRIMER_NOMBRE           VARCHAR(30) NOT NULL,
    PRIMER_APELLIDO         VARCHAR(30) NOT NULL,
    NACIONALIDAD            VARCHAR(50),
    ANOS_EXPERIENCIA        INT,
    CERTIFICACION           VARCHAR(50),
    NUM_PELEAS_JUZGADAS     INT,
    TENDENCIA               VARCHAR(50),
    ID_ESTADISTICA          INT
);

-- ------------------------------------------------------------
-- Tabla: ESTADISTICA (depende de PELEA y JUEZ)
-- ------------------------------------------------------------
CREATE TABLE ESTADISTICA (
    ID_ESTADISTICA              INT PRIMARY KEY,
    RESULTADO                   VARCHAR(20),
    BALANCE_GOLPES_ROJO         INT,
    BALANCE_GOLPES_AZUL         INT,
    BALANCE_GOLPES_SIGN_ROJO    INT,
    BALANCE_GOLPES_SIGN_AZUL    INT,
    BALANCE_DERRIBOS_ROJO       INT,
    BALANCE_DERRIBOS_AZUL       INT,
    TIEMPO_CONTROL_SEG_ROJO     INT,
    TIEMPO_CONTROL_SEG_AZUL     INT,
    PUNTAJE_TOTAL_ROJO          INT,
    PUNTAJE_TOTAL_AZUL          INT,
    METODO_FINALIZACION         VARCHAR(50),
    ID_PELEA                    INT,
    ID_JUEZ                     INT,
    CONSTRAINT estadistica_pelea_fk FOREIGN KEY (ID_PELEA)
        REFERENCES PELEA(ID_PELEA),
    CONSTRAINT estadistica_juez_fk FOREIGN KEY (ID_JUEZ)
        REFERENCES JUEZ(ID_JUEZ)
);

-- ------------------------------------------------------------
-- Agregar Foreign Key de JUEZ a ESTADISTICA (después de crear ESTADISTICA)
-- ------------------------------------------------------------
ALTER TABLE JUEZ
    ADD CONSTRAINT juez_estadistica_fk FOREIGN KEY (ID_ESTADISTICA)
        REFERENCES ESTADISTICA(ID_ESTADISTICA);

-- ============================================================
-- FIN DE SCRIPTS DE CREACIÓN
-- ============================================================