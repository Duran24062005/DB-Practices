-- Crear base de datos de prueba
CREATE DATABASE IF NOT EXISTS testdb;

-- Usar la base de datos
USE testdb;

-- Crear tabla de ejemplo
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Insertar algunos registros
INSERT INTO users (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com');

-- Consultar registros
SELECT * FROM users;

-- Actualizar un dato
UPDATE users SET email = 'alice@newmail.com' WHERE name = 'Alice';

-- Eliminar un registro
DELETE FROM users WHERE name = 'Charlie';

-- Ver resultado final
SELECT * FROM users;



create database final_fantastyc;