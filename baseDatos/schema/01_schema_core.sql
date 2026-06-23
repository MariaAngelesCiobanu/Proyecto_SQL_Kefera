CREATE SCHEMA IF NOT EXISTS kefera;
SET search_path TO kefera;

CREATE TABLE if not exists locales (
    id_local SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(30),
    email VARCHAR(255),
    horario TEXT,
    activo BOOLEAN DEFAULT TRUE
);

CREATE table if not exists clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150),
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    telefono VARCHAR(30),
    fecha_nacimiento DATE,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    activo BOOLEAN DEFAULT TRUE
);

CREATE TABLE if not exists niveles_vip (
    id_nivel SERIAL PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL,
    puntos_minimos INTEGER NOT NULL
);

CREATE TABLE if not exists fidelizacion (
    id_fidelizacion SERIAL PRIMARY KEY,
    id_cliente INTEGER UNIQUE REFERENCES clientes(id_cliente),
    id_nivel INTEGER REFERENCES niveles_vip(id_nivel),
    puntos INTEGER DEFAULT 0
);

CREATE TABLE if not exists movimientos_puntos (
    id_movimiento SERIAL PRIMARY KEY,
    id_cliente INTEGER REFERENCES clientes(id_cliente),
    puntos INTEGER NOT NULL,
    motivo VARCHAR(255),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE if not exists promociones (
    id_promocion SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    fecha_inicio DATE,
    fecha_fin DATE,
    activa BOOLEAN DEFAULT TRUE
);

CREATE TABLE if not exists cupones_cliente (
    id_cupon SERIAL PRIMARY KEY,
    id_cliente INTEGER REFERENCES clientes(id_cliente),
    id_promocion INTEGER REFERENCES promociones(id_promocion),
    utilizado BOOLEAN DEFAULT FALSE,
    fecha_uso TIMESTAMP
);

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'kefera'
order by information_schema."tables".table_name ;
