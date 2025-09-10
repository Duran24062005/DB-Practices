# Normalización de Bases de Datos

## ¿Qué es la Normalización?
La normalización es un proceso utilizado en el diseño de bases de datos relacionales para organizar los datos y reducir la redundancia, asegurando la integridad y eficiencia. Consiste en dividir las tablas grandes en tablas más pequeñas y definir relaciones entre ellas.

## Objetivos de la Normalización
- Eliminar la redundancia de datos.
- Evitar anomalías de actualización, inserción y eliminación.
- Mejorar la consistencia y la integridad de los datos.

## Anomalías en Bases de Datos No Normalizadas
- **Anomalía de inserción:** Dificultad para agregar datos si otros datos no están presentes.
- **Anomalía de actualización:** Cambios inconsistentes al modificar datos redundantes.
- **Anomalía de eliminación:** Pérdida accidental de datos importantes al borrar registros.

## Formas Normales

### Primera Forma Normal (1FN)
Una tabla está en 1FN si:
- Todos los atributos contienen valores atómicos (no divisibles).
- No existen grupos repetitivos o conjuntos de valores múltiples.

**Ejemplo:**
| ID | Nombre | Teléfonos         |
|----|--------|-------------------|
| 1  | Juan   | 1111, 2222        |

**Solución 1FN:**
| ID | Nombre | Teléfono |
|----|--------|----------|
| 1  | Juan   | 1111     |
| 1  | Juan   | 2222     |

---

### Segunda Forma Normal (2FN)
Una tabla está en 2FN si:
- Está en 1FN.
- Todos los atributos no clave dependen completamente de la clave primaria (no hay dependencias parciales).

**Ejemplo:**
| ID | Curso   | Profesor |
|----|---------|----------|
| 1  | SQL     | Ana      |
| 1  | Python  | Ana      |

**Solución 2FN:**
Separar la información en dos tablas:
- Cursos(ID, Curso)
- Profesores(Curso, Profesor)

---

### Tercera Forma Normal (3FN)
Una tabla está en 3FN si:
- Está en 2FN.
- No existen dependencias transitivas (los atributos no clave dependen solo de la clave primaria).

**Ejemplo:**
| ID | Curso   | Profesor | Departamento |
|----|---------|----------|--------------|
| 1  | SQL     | Ana      | Informática  |

**Solución 3FN:**
Separar en:
- Cursos(ID, Curso, Profesor)
- Profesores(Profesor, Departamento)

---

### Formas Normales Superiores

#### Cuarta Forma Normal (4FN)
Elimina dependencias multivaluadas. Una tabla está en 4FN si está en 3FN y no tiene dependencias multivaluadas.

#### Quinta Forma Normal (5FN)
Elimina dependencias de unión. Una tabla está en 5FN si está en 4FN y toda dependencia de unión es consecuencia de las claves.

---

## Proceso de Normalización

1. **Identificar entidades y atributos.**
2. **Definir la clave primaria.**
3. **Aplicar 1FN:** Eliminar grupos repetitivos.
4. **Aplicar 2FN:** Eliminar dependencias parciales.
5. **Aplicar 3FN:** Eliminar dependencias transitivas.
6. **Aplicar formas superiores si es necesario.**

---

## Ventajas de la Normalización
- Menor redundancia de datos.
- Mayor integridad y consistencia.
- Facilidad de mantenimiento y actualización.

## Desventajas de la Normalización
- Puede aumentar la complejidad de las consultas (más tablas y relaciones).
- En algunos casos, puede afectar el rendimiento si se requieren muchas uniones (JOIN).

---

## Ejemplo Práctico

**Tabla no normalizada:**
| ID | Nombre | Dirección         | Curso   | Profesor |
|----|--------|------------------|---------|----------|
| 1  | Juan   | Calle 1          | SQL     | Ana      |
| 2  | Pedro  | Calle 2          | Python  | Luis     |

**Tablas normalizadas:**
- Estudiantes(ID, Nombre, Dirección)
- Cursos(ID_Curso, Curso, Profesor)
- Inscripciones(ID, ID_Curso)

---

## Recursos Adicionales
-