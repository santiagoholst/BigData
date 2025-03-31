
-- CONSULTAS

-- 1
SELECT nombre FROM alumnos;

-- 2
SELECT DISTINCT ciudad FROM docentes;

-- 3
SELECT nombre FROM materias WHERE codigo > 102;

-- 4
SELECT nombre FROM alumnos WHERE ciudad = 'Córdoba';

-- 5
SELECT m.nombre, c.nota
FROM cursadas c
JOIN materias m ON c.codigo_materia = m.codigo
WHERE c.legajo_alumno = 2;

-- 6
SELECT a.nombre AS alumno, m.nombre AS materia
FROM cursadas c
JOIN alumnos a ON c.legajo_alumno = a.legajo
JOIN materias m ON c.codigo_materia = m.codigo;

-- 7
SELECT DISTINCT a.nombre
FROM cursadas c
JOIN alumnos a ON c.legajo_alumno = a.legajo
WHERE c.nota = 10;

-- 8
SELECT DISTINCT d.nombre
FROM docentes d
JOIN alumnos a ON d.ciudad = a.ciudad;

-- 9
SELECT d.nombre, d.ciudad
FROM docentes d
WHERE d.legajo NOT IN (
    SELECT legajo_docente
    FROM dictado_materias
    WHERE codigo_materia = 102
);

-- 10
SELECT nombre FROM alumnos WHERE nombre LIKE 'L%';

-- 11
SELECT nombre
FROM materias
WHERE codigo NOT IN (
    SELECT codigo_materia
    FROM dictado_materias
    WHERE legajo_docente IN (2, 4)
);

-- 12
SELECT nombre
FROM alumnos
WHERE ciudad = 'Rosario' AND legajo > 2;

-- 13
SELECT a.nombre
FROM cursadas c
JOIN alumnos a ON c.legajo_alumno = a.legajo
WHERE c.codigo_materia = 103 AND c.nota BETWEEN 6 AND 8;

-- 14
SELECT nombre
FROM alumnos
WHERE ciudad = 'Mar del Plata' AND nombre NOT LIKE '%a%';

-- 15
SELECT DISTINCT a.nombre
FROM cursadas c
JOIN alumnos a ON c.legajo_alumno = a.legajo
WHERE c.codigo_materia IN (101, 105) AND c.nota < 7;
