"""import pandas as pd

# Ruta al archivo Excel
file_path = "Situación_Víctimas_Minas_Antipersonal_en_Colombia_20250916.xlsx"

# Cargar la hoja
df = pd.read_excel(file_path, sheet_name="Situación_Víctimas_Minas_Anti")

# Normalizar nombres de columnas
df.columns = [
    "nombre_departamento", "codigo_departamento",
    "nombre_municipio", "codigo_municipio",
    "tipo_area", "sitio", "anio", "mes",
    "rango_edad", "grupo_etnico", "condicion",
    "estado", "genero", "latitud_cabecera",
    "longitud_cabecera", "tipo_evento",
    "ubicacion", "actividad"
]

# Quitar duplicados para jerarquía
departamentos = df[["codigo_departamento", "nombre_departamento"]].drop_duplicates().reset_index(drop=True)
municipios = df[["codigo_municipio", "nombre_municipio", "codigo_departamento"]].drop_duplicates().reset_index(drop=True)

# Generar IDs artificiales
departamentos["departamento_id"] = departamentos.index + 1
municipios["municipio_id"] = municipios.index + 1

# Eventos
eventos = df[["tipo_area", "sitio", "anio", "mes", "latitud_cabecera",
              "longitud_cabecera", "tipo_evento", "ubicacion", "actividad",
              "codigo_municipio"]].reset_index(drop=True)
eventos["evento_id"] = eventos.index + 1
eventos = eventos.merge(municipios[["codigo_municipio", "municipio_id"]], on="codigo_municipio", how="left")

# Víctimas
victimas = df[["rango_edad", "grupo_etnico", "condicion", "estado", "genero"]].reset_index(drop=True)
victimas["victima_id"] = victimas.index + 1
victimas["id_evento"] = eventos["evento_id"]

# Construcción del SQL
sql_script = ""

# Inserts Departamentos
for _, row in departamentos.iterrows():
    sql_script += f"INSERT INTO Departamento (departamento_id, nombre_departamento, codigo_departamento) VALUES ({row['departamento_id']}, '{row['nombre_departamento']}', {row['codigo_departamento']});\n"

# Inserts Municipios
for _, row in municipios.iterrows():
    sql_script += f"INSERT INTO Municipio (municipio_id, nombre_municipio, codigo_municipio, id_departamento) VALUES ({row['municipio_id']}, '{row['nombre_municipio']}', {row['codigo_municipio']}, {row['departamento_id']});\n"

# Inserts Eventos
for _, row in eventos.iterrows():
    sql_script += f"INSERT INTO Evento (evento_id, tipo_area, sitio, anio, mes, latitud_cabecera, longitud_cabecera, tipo_evento, ubicacion, actividad, id_municipio) VALUES ({row['evento_id']}, '{row['tipo_area']}', '{row['sitio']}', {row['anio']}, {row['mes']}, {row['latitud_cabecera']}, {row['longitud_cabecera']}, '{row['tipo_evento']}', '{row['ubicacion']}', '{row['actividad']}', {row['municipio_id']});\n"

# Inserts Víctimas
for _, row in victimas.iterrows():
    sql_script += f"INSERT INTO Victima (victima_id, rango_edad, grupo_etnico, condicion, estado, genero, id_evento) VALUES ({row['victima_id']}, '{row['rango_edad']}', '{row['grupo_etnico']}', '{row['condicion']}', '{row['estado']}', '{row['genero']}', {row['id_evento']});\n"

# Guardar en archivo .sql
with open("insert_victimas.sql", "w", encoding="utf-8") as f:
    f.write(sql_script)

print("✅ Archivo 'insert_victimas.sql' generado con éxito.")"""



import pathlib

root = pathlib.Path().cwd()

path = "/home/administrador/Escritorio/DB-practices/Campus_Practices"

print(root)
