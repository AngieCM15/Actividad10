<?php
require '../config/database.php';

$asignaciones = [
    [1, 1], [1, 2], [1, 3], // Alumno 1 asignado a 3 evaluaciones
    [2, 1], [2, 2], [2, 3], // Alumno 2 asignado a 3 evaluaciones
    [3, 1], [3, 2], [3, 3], // Alumno 3 asignado a 3 evaluaciones
    [4, 4], [4, 5], [4, 1], // Alumno 4 asignado a 3 evaluaciones
    [5, 2], [5, 3], // Alumno 5 asignado a 2 evaluaciones
    [6, 4], [6, 5], // Alumno 6 asignado a 2 evaluaciones
    [7, 1], [7, 2], // Alumno 7 asignado a 2 evaluaciones
    [8, 3], [8, 4], // Alumno 8 asignado a 2 evaluaciones
    // Alumnos 9 y 10 no tienen asignaciones
];

foreach ($asignaciones as $asignacion) {
    $stmt = $pdo->prepare("INSERT INTO Asignacion (id_alumno, id_evaluacion, fecha_asignacion) VALUES (?, ?, NOW())");
    $stmt->execute($asignacion);
}
?>
