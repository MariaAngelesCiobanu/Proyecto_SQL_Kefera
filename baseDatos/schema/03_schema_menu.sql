SET search_path TO kefera;

CREATE TABLE categorias (
    id_categoria SERIAL PRIMARY KEY,

    nombre VARCHAR(100) UNIQUE NOT NULL,

    descripcion TEXT,

    imagen VARCHAR(500)
);

CREATE TABLE subcategorias (
    id_subcategoria SERIAL PRIMARY KEY,

    id_categoria INTEGER
        REFERENCES categorias(id_categoria)
        ON DELETE CASCADE,

    nombre VARCHAR(100) NOT NULL,

    descripcion TEXT
);

CREATE TABLE productos (
    id_producto SERIAL PRIMARY KEY,

    id_categoria INTEGER
        REFERENCES categorias(id_categoria),

    id_subcategoria INTEGER
        REFERENCES subcategorias(id_subcategoria),

    nombre VARCHAR(150) NOT NULL,

    descripcion TEXT,

    historia_egipcia TEXT,

    beneficios TEXT,

    precio NUMERIC(10,2) NOT NULL,

    imagen_principal VARCHAR(500),

    calorias INTEGER,

    tiempo_preparacion INTEGER,

    nivel_picante INTEGER DEFAULT 0,

    activo BOOLEAN DEFAULT TRUE
);

CREATE TABLE imagenes_producto (
    id_imagen SERIAL PRIMARY KEY,

    id_producto INTEGER
        REFERENCES productos(id_producto)
        ON DELETE CASCADE,

    url_imagen VARCHAR(500),

    principal BOOLEAN DEFAULT FALSE,

    orden INTEGER DEFAULT 1
);

CREATE TABLE ingredientes (
    id_ingrediente SERIAL PRIMARY KEY,

    nombre VARCHAR(100) UNIQUE NOT NULL,

    unidad_medida VARCHAR(20),

    stock_actual NUMERIC(10,2),

    stock_minimo NUMERIC(10,2)
);

CREATE TABLE producto_ingredientes (
    id_producto INTEGER
        REFERENCES productos(id_producto)
        ON DELETE CASCADE,

    id_ingrediente INTEGER
        REFERENCES ingredientes(id_ingrediente)
        ON DELETE CASCADE,

    cantidad NUMERIC(10,2),

    PRIMARY KEY (
        id_producto,
        id_ingrediente
    )
);

CREATE TABLE alergenos (
    id_alergeno SERIAL PRIMARY KEY,

    nombre VARCHAR(100) UNIQUE NOT NULL,

    icono VARCHAR(255)
);

CREATE TABLE producto_alergenos (
    id_producto INTEGER
        REFERENCES productos(id_producto)
        ON DELETE CASCADE,

    id_alergeno INTEGER
        REFERENCES alergenos(id_alergeno)
        ON DELETE CASCADE,

    PRIMARY KEY (
        id_producto,
        id_alergeno
    )
);

CREATE TABLE etiquetas (
    id_etiqueta SERIAL PRIMARY KEY,

    nombre VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE producto_etiquetas (
    id_producto INTEGER
        REFERENCES productos(id_producto)
        ON DELETE CASCADE,

    id_etiqueta INTEGER
        REFERENCES etiquetas(id_etiqueta)
        ON DELETE CASCADE,

    PRIMARY KEY (
        id_producto,
        id_etiqueta
    )
);

CREATE TABLE extras (
    id_extra SERIAL PRIMARY KEY,

    nombre VARCHAR(100),

    precio_extra NUMERIC(10,2)
);

CREATE TABLE producto_extras (
    id_producto INTEGER
        REFERENCES productos(id_producto)
        ON DELETE CASCADE,

    id_extra INTEGER
        REFERENCES extras(id_extra)
        ON DELETE CASCADE,

    PRIMARY KEY (
        id_producto,
        id_extra
    )
);