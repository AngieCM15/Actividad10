CREATE DATABASE aprendeperu;
USE aprendeperu;

CREATE TABLE Alumno (
    id_alumno INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    identificacion_tipo ENUM('DNI', 'Pasaporte') NOT NULL,  
    identificacion_numero VARCHAR(20) NOT NULL,             
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,       
    edad INT,
    direccion VARCHAR(255),                                   
    correo VARCHAR(100) UNIQUE NOT NULL,                     
    estado ENUM('activo', 'inactivo') DEFAULT 'activo'       
);

CREATE TABLE Evaluacion (
    id_evaluacion INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) UNIQUE NOT NULL,                      
    area VARCHAR(50),                                         
    fecha_inicio DATETIME NOT NULL,  
    fecha_final DATETIME NOT NULL,                               
    puntaje_maximo INT NOT NULL CHECK (puntaje_maximo > 0),                            
    tiempo INT CHECK (tiempo > 0)                    
);

CREATE TABLE Pregunta (
    id_pregunta INT PRIMARY KEY AUTO_INCREMENT,
    id_evaluacion INT NOT NULL,                      
    texto_pregunta TEXT NOT NULL,                         
    puntaje INT NOT NULL CHECK (puntaje > 0),             
    estado ENUM('activo', 'eliminado') DEFAULT 'activo',  
    FOREIGN KEY (id_evaluacion) REFERENCES Evaluacion(id_evaluacion) ON DELETE CASCADE
);

CREATE TABLE Alternativa (
    id_alternativa INT PRIMARY KEY AUTO_INCREMENT,
    id_pregunta INT NOT NULL,                              
    texto TEXT NOT NULL,                                    
    es_correcta BOOLEAN NOT NULL,                            
    FOREIGN KEY (id_pregunta) REFERENCES Pregunta(id_pregunta) ON DELETE CASCADE
);

CREATE TABLE Intentos (
    id_intento INT PRIMARY KEY AUTO_INCREMENT,
    id_alumno INT NOT NULL,                                 
    id_evaluacion INT NOT NULL,                             
    fecha_inicio DATETIME NOT NULL,                         
    fecha_fin DATETIME NOT NULL,                         
    puntaje DECIMAL(5,2) NOT NULL CHECK (puntaje BETWEEN 0 AND 20), 
    tiempo INT NOT NULL CHECK (tiempo > 0),            
    FOREIGN KEY (id_alumno) REFERENCES Alumno(id_alumno) ON DELETE CASCADE,
    FOREIGN KEY (id_evaluacion) REFERENCES Evaluacion(id_evaluacion) ON DELETE CASCADE
);

CREATE TABLE Respuesta (
    id_respuesta INT PRIMARY KEY AUTO_INCREMENT,
    id_intento INT NOT NULL,                          
    id_pregunta INT NOT NULL,                          
    id_alternativa INT NOT NULL,                     
    FOREIGN KEY (id_intento) REFERENCES Intentos(id_intento) ON DELETE CASCADE,
    FOREIGN KEY (id_pregunta) REFERENCES Pregunta(id_pregunta) ON DELETE CASCADE,
    FOREIGN KEY (id_alternativa) REFERENCES Alternativa(id_alternativa) ON DELETE CASCADE
);

CREATE TABLE Asignacion (
    id_alumno INT NOT NULL,                          
    id_evaluacion INT NOT NULL,                       
    estado ENUM('pendiente', 'aprobado', 'desaprobado') DEFAULT 'pendiente', 
    fecha_asignacion DATETIME NOT NULL,                   
    PRIMARY KEY (id_alumno, id_evaluacion),                
    FOREIGN KEY (id_alumno) REFERENCES Alumno(id_alumno) ON DELETE CASCADE,
    FOREIGN KEY (id_evaluacion) REFERENCES Evaluacion(id_evaluacion) ON DELETE CASCADE
);