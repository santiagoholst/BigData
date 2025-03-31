
-- DATOS DE PRUEBA

INSERT INTO alumnos (legajo, nombre, ciudad) VALUES 
(1, 'Lucía', 'Rosario'),
(2, 'Martín', 'Córdoba'),
(3, 'Laura', 'Mar del Plata'),
(4, 'Lucas', 'Rosario'),
(5, 'Sofía', 'Mar del Plata');

INSERT INTO docentes (legajo, nombre, ciudad) VALUES 
(1, 'Ana', 'Rosario'),
(2, 'Diego', 'Córdoba'),
(3, 'Elena', 'Buenos Aires'),
(4, 'Luis', 'Mar del Plata');

INSERT INTO materias (codigo, nombre) VALUES 
(101, 'Matemática'),
(102, 'Lengua'),
(103, 'Historia'),
(104, 'Física'),
(105, 'Química');

INSERT INTO cursadas (legajo_alumno, codigo_materia, nota) VALUES 
(1, 101, 9),
(1, 102, 6),
(2, 102, 8),
(2, 103, 7),
(2, 104, 10),
(3, 103, 10),
(4, 103, 7),
(4, 105, 5),
(5, 101, 6),
(5, 105, 4);

INSERT INTO dictado_materias (legajo_docente, codigo_materia) VALUES 
(1, 101),
(1, 104),
(2, 102),
(3, 103),
(4, 105);
