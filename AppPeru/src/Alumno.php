<?php
class Alumno {
    private $pdo;

    public function __construct($pdo) {
        $this->pdo = $pdo;
    }

    public function crearAlumno($nombre, $identificacion_tipo, $identificacion_numero, $edad, $direccion, $correo) {
        $stmt = $this->pdo->prepare("INSERT INTO Alumno (nombre, identificacion_tipo, identificacion_numero, edad, direccion, correo) VALUES (?, ?, ?, ?, ?, ?)");
        return $stmt->execute([$nombre, $identificacion_tipo, $identificacion_numero, $edad, $direccion, $correo]);
    }

    // Otros métodos para obtener, actualizar, eliminar alumnos...
}
?>
