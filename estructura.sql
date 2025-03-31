
-- ESTRUCTURA DE LA BASE DE DATOS

DROP TABLE IF EXISTS alumnos;
DROP TABLE IF EXISTS docentes;
DROP TABLE IF EXISTS materias;
DROP TABLE IF EXISTS cursadas;
DROP TABLE IF EXISTS dictado_materias;

CREATE TABLE alumnos (
    legajo INTEGER PRIMARY KEY,
    nombre TEXT UNIQUE NOT NULL,
    ciudad TEXT NOT NULL
);

CREATE TABLE docentes (
    legajo INTEGER PRIMARY KEY,
    nombre TEXT UNIQUE NOT NULL,
    ciudad TEXT NOT NULL
);

CREATE TABLE materias (
    codigo INTEGER PRIMARY KEY,
    nombre TEXT UNIQUE NOT NULL
);

CREATE TABLE cursadas (
    legajo_alumno INTEGER,
    codigo_materia INTEGER,
    nota INTEGER,
    FOREIGN KEY (legajo_alumno) REFERENCES alumnos(legajo),
    FOREIGN KEY (codigo_materia) REFERENCES materias(codigo)
);

CREATE TABLE dictado_materias (
    legajo_docente INTEGER,
    codigo_materia INTEGER,
    FOREIGN KEY (legajo_docente) REFERENCES docentes(legajo),
    FOREIGN KEY (codigo_materia) REFERENCES materias(codigo)
);
