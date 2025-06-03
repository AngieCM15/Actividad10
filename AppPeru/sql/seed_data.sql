-- Insertar alumnos
INSERT INTO Alumno (nombre, identificacion_tipo, identificacion_numero, edad, direccion, correo) VALUES
('Juan Pérez', 'DNI', '12345678', 20, 'Calle 1', 'juan@example.com'),
('María López', 'DNI', '87654321', 22, 'Calle 2', 'maria@example.com'),
('Carlos García', 'DNI', '11223344', 19, 'Calle 3', 'carlos@example.com'),
('Ana Torres', 'DNI', '44332211', 21, 'Calle 4', 'ana@example.com'),
('Luis Fernández', 'DNI', '55667788', 23, 'Calle 5', 'luis@example.com'),
('Sofía Martínez', 'DNI', '99887766', 20, 'Calle 6', 'sofia@example.com'),
('Pedro Sánchez', 'DNI', '22334455', 24, 'Calle 7', 'pedro@example.com'),
('Laura Jiménez', 'DNI', '33445566', 22, 'Calle 8', 'laura@example.com'),
('Javier Morales', 'DNI', '44556677', 19, 'Calle 9', 'javier@example.com'),
('Clara Ruiz', 'DNI', '55667788', 21, 'Calle 10', 'clara@example.com');

-- Insertar evaluaciones
INSERT INTO Evaluacion (nombre, area, fecha_inicio, fecha_final, puntaje_maximo, tiempo) VALUES
('Matemáticas', 'Matemáticas', '2023-10-01', '2023-10-10', 20, 60),
('Ciencias', 'Ciencias', '2023-10-05', '2023-10-15', 20, 60),
('Historia', 'Historia', '2023-10-10', '2023-10-20', 20, 60),
('Geografía', 'Geografía', '2023-10-15', '2023-10-25', 20, 60),
('Literatura', 'Literatura', '2023-10-20', '2023-10-30', 20, 60);

-- Insertar preguntas y alternativas (ejemplo para una evaluación)
INSERT INTO Pregunta (id_evaluacion, texto_pregunta, puntaje) VALUES
(1, '¿Cuál es la raíz cuadrada de 16?', 4),
(1, '¿Cuánto es 2 + 2?', 4),
(1, '¿Qué es un triángulo?', 4),
(1, '¿Cuánto es 5 * 5?', 4),
(1, '¿Qué es un círculo?', 4);

INSERT INTO Alternativa (id_pregunta, texto, es_correcta) VALUES
(1, '4', true),
(1, '5', false),
(1, '6', false),
(1, '7', false),
(2, '3', false),
(2, '4', true),
(2, '5', false),
(2, '6', false),
(3, 'Una figura con tres lados', true),
(3, 'Una figura con cuatro lados', false),
(3, 'Una figura con cinco lados', false),
(3, 'Una figura con seis lados', false),
(4, '10', false),
(4, '20', false),
(4, '25', true),
(4, '30', false),
(5, 'Una figura redonda', true),
(5, 'Una figura cuadrada', false),
(5, 'Una figura triangular', false),
(5, 'Una figura rectangular', false);