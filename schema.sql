-- schema.sql
-- Definición de tablas para análisis RFM

CREATE TABLE IF NOT EXISTS usuarios (
    usuario_id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    email TEXT UNIQUE
);

CREATE TABLE IF NOT EXISTS ordenes (
    orden_id INTEGER PRIMARY KEY,
    usuario_id INTEGER,
    monto REAL NOT NULL, -- El conjunto de los Reales
    fecha DATE NOT NULL,
    FOREIGN KEY(usuario_id) REFERENCES usuarios(usuario_id)
);