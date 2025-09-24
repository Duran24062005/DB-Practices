-- Seleccionar todos los elementos de la tabla Municipio
SELECT * FROM Victimas_Minas_Antipersonal.Municipio;

-- Seleccionar todos los elementos de la tabla Municipio por Columna
SELECT municipio_id, nombre_municipio, codigo_municipio, id_departamento FROM Victimas_Minas_Antipersonal.Municipio;

-- Seleccionar todos los elementos de la tabla Departamento 
SELECT * FROM Victimas_Minas_Antipersonal.Departamento;

-- Seleccionar todos los elementos de la tabla Departamento por Columna
SELECT departamento_id, nombre_departamento, codigo_departamento FROM Victimas_Minas_Antipersonal.Departamento;


-- Cambiar el nombre a las Columnas de la tabla Departamento
SELECT departamento_id as ID, nombre_departamento as Nombre, codigo_departamento as Codigo FROM Victimas_Minas_Antipersonal.Departamento;