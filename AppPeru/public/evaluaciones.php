<?php
require '../config/database.php';
require '../src/Alumno.php';
require '../src/Evaluacion.php';

$alumnoModel = new Alumno($pdo);
$evaluacionModel = new Evaluacion($pdo);

// Aquí puedes manejar la lógica para mostrar la página principal
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Aprende Perú</title>
</head>
<body>
    <h1>Bienvenido a Aprende Perú</h1>
    <a href="alumnos.php">Gestionar Alumnos</a>
    <a href="evaluaciones.php">Gestionar Evaluaciones</a>
</body>
</html>
