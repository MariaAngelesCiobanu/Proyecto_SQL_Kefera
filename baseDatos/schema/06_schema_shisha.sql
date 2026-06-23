SET search_path TO kefera;

CREATE TABLE shishas (
    id_shisha SERIAL PRIMARY KEY,

    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,

    imagen VARCHAR(500),

    precio NUMERIC(10,2) NOT NULL,

    intensidad VARCHAR(30),

    activa BOOLEAN DEFAULT TRUE
);

CREATE TABLE sabores_shisha (
    id_sabor SERIAL PRIMARY KEY,

    nombre VARCHAR(100) UNIQUE NOT NULL,

    descripcion TEXT
);

CREATE TABLE shisha_sabores (
    id_shisha INTEGER
        REFERENCES shishas(id_shisha)
        ON DELETE CASCADE,

    id_sabor INTEGER
        REFERENCES sabores_shisha(id_sabor)
        ON DELETE CASCADE,

    PRIMARY KEY (
        id_shisha,
        id_sabor
    )
);