-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS Victimas_Minas_Antipersonal;

-- Uso de la base de datos
use Victimas_Minas_Antipersonal;

-- ========================
-- TABLA: Departamento
-- ========================
CREATE TABLE IF NOT EXISTS Departamento (
    departamento_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_departamento VARCHAR(50) NOT NULL,
    codigo_departamento FLOAT NOT NULL
);

-- ========================
-- TABLA: Municipio
-- ========================
CREATE TABLE IF NOT EXISTS Municipio (
    municipio_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_municipio VARCHAR(50) NOT NULL,
    codigo_municipio FLOAT NOT NULL,
    id_departamento INT NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(departamento_id)
);

-- ========================
-- TABLA: Evento
-- ========================
CREATE TABLE IF NOT EXISTS Evento (
    evento_id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_area ENUM('Rural', 'Urbana') NOT NULL,
    sitio VARCHAR(100),
    anio YEAR NOT NULL,
    mes TINYINT NOT NULL CHECK (mes BETWEEN 1 AND 12),
    latitud_cabecera DECIMAL(10,6),
    longitud_cabecera DECIMAL(10,6),
    tipo_evento VARCHAR(100),
    ubicacion VARCHAR(150),
    actividad VARCHAR(100),
    id_municipio INT NOT NULL,
    FOREIGN KEY (id_municipio) REFERENCES Municipio(municipio_id)
);

-- ========================
-- TABLA: Victima
-- ========================
CREATE TABLE IF NOT EXISTS Victima (
    victima_id INT AUTO_INCREMENT PRIMARY KEY,
    rango_edad ENUM('Menor de 18 años', 'Mayor de 18 años') NOT NULL,
    grupo_etnico VARCHAR(50),
    condicion VARCHAR(50),
    estado ENUM('Herido', 'Muerto') NOT NULL,
    genero ENUM('Hombre', 'Mujer') NOT NULL,
    id_evento INT NOT NULL,
    FOREIGN KEY (id_evento) REFERENCES Evento(evento_id)
);




SELECT * FROM Departamento;
SELECT * FROM Municipio;
SELECT * FROM Evento;
SELECT * FROM Victima;