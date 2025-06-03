<?php
class Evaluacion {
    private $pdo;

    public function __construct($pdo) {
        $this->pdo = $pdo;
    }

    public function crearEvaluacion($nombre, $area, $fecha_inicio, $fecha_final, $puntaje_maximo, $tiempo) {
        $stmt = $this->pdo->prepare("INSERT INTO Evaluacion (nombre, area, fecha_inicio, fecha_final, puntaje_maximo, tiempo) VALUES (?, ?, ?, ?, ?, ?)");
        return $stmt->execute([$nombre, $area, $fecha_inicio, $fecha_final, $puntaje_maximo, $tiempo]);
    }

    // Otros métodos para obtener, actualizar, eliminar evaluaciones...
}
?>
