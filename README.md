# Prácticas de Bases de Datos

## Introducción
Este repositorio contiene ejercicios y apuntes sobre bases de datos, orientados a comprender los conceptos fundamentales y aplicar buenas prácticas en el diseño y manejo de datos.

## Temas Principales

### 1. ¿Qué es una Base de Datos?
Una base de datos es un sistema organizado para almacenar, gestionar y recuperar información de manera eficiente. Permite la manipulación de grandes volúmenes de datos de forma estructurada.

### 2. Modelos de Bases de Datos

#### Modelo Conceptual
Representa la estructura lógica de la información, usando diagramas entidad-relación (ER) para definir entidades, atributos y relaciones.

#### Modelo Lógico
Traduce el modelo conceptual a tablas, claves primarias y foráneas, preparando el diseño para su implementación en un sistema de gestión de bases de datos (SGBD).

#### Modelo Físico
Describe cómo se almacenan los datos físicamente en el sistema, considerando índices, particiones y otros aspectos de optimización.

### 3. Normalización
La normalización es el proceso de organizar los datos para reducir la redundancia y mejorar la integridad. Las formas normales (1FN, 2FN, 3FN, etc.) ayudan a estructurar las tablas correctamente.

### 4. Sintaxis Básica de SQL

```sql
-- Crear una tabla
CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    correo VARCHAR(100)
);

-- Insertar datos
INSERT INTO usuarios (nombre, correo) VALUES ('Juan', 'juan@email.com');

-- Seleccionar datos
SELECT id, nombre, correo FROM usuarios WHERE nombre = 'Juan';

-- Actualizar datos
UPDATE usuarios SET correo = 'nuevo@email.com' WHERE id = 1;

-- Eliminar datos
DELETE FROM usuarios WHERE id = 1;
```

### 5. Uso de MySQL desde la terminal

```bash
mysql -u usuario -p -h localhost
```
Luego ingresa la contraseña cuando se solicite. Para ejecutar archivos `.sql`:
```bash
mysql -u usuario -p nombre_bd < archivo.sql
```

## Recursos Recomendados
- [Manual de MySQL](https://dev.mysql.com/doc/)
- [Guía de Normalización](https://es.wikipedia.org/wiki/Normalizaci%C3%B3n_de_base_de_datos)
- [SQL Tutorial](https://www.w3schools.com/sql/)

---

Este archivo irá creciendo con ejemplos y explicaciones