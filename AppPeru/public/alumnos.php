<?php
require '../config/database.php';

// Simulación de desarrollo de evaluaciones
$intentos = [
    [1, 1, 15, 18, 12.5], // Alumno 1, Evaluación 1, tiempo 15 min, puntaje 12.5
    [2, 1, 16, 19, 18.0], // Alumno 2, Evaluación 1, tiempo 16 min, puntaje 18.0
    [3, 1, 14, 17, 10.0], // Alumno 3, Evaluación 1, tiempo 14 min, puntaje 10.0
    [4, 2, 15, 18, 20.0], // Alumno 4, Evaluación 2, tiempo 15 min, puntaje 20.0
    [5, 2, 16, 19, 8.0],  // Alumno 5, Evaluación 2, tiempo 16 min, puntaje 8.0
    // Agregar más intentos según sea necesario
];

foreach ($intentos as $intento) {
    $stmt = $pdo->prepare("INSERT INTO Intentos (id_alumno, id_evaluacion, fecha_inicio, fecha_fin, puntaje, tiempo) VALUES (?, ?, NOW(), NOW(), ?, ?)");
    $stmt->execute($intento);
}
?>
