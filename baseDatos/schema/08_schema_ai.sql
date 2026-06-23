SET search_path TO kefera;

CREATE TABLE preferencias_cliente (
    id_preferencia SERIAL PRIMARY KEY,

    id_cliente INTEGER
        REFERENCES clientes(id_cliente)
        ON DELETE CASCADE,

    preferencia VARCHAR(255)
);

CREATE TABLE consultas_ia (
    id_consulta SERIAL PRIMARY KEY,

    id_cliente INTEGER
        REFERENCES clientes(id_cliente),

    consulta TEXT,

    respuesta TEXT,

    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE recomendaciones_ia (
    id_recomendacion SERIAL PRIMARY KEY,

    id_cliente INTEGER
        REFERENCES clientes(id_cliente),

    id_producto INTEGER
        REFERENCES productos(id_producto),

    motivo TEXT,

    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE historial_recomendaciones (
    id_historial SERIAL PRIMARY KEY,

    id_recomendacion INTEGER
        REFERENCES recomendaciones_ia(id_recomendacion),

    aceptada BOOLEAN,

    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE valoraciones_producto (
    id_valoracion SERIAL PRIMARY KEY,

    id_cliente INTEGER
        REFERENCES clientes(id_cliente),

    id_producto INTEGER
        REFERENCES productos(id_producto),

    puntuacion INTEGER CHECK (puntuacion BETWEEN 1 AND 5),

    comentario TEXT,

    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE eventos_usuario (
    id_evento SERIAL PRIMARY KEY,

    id_cliente INTEGER
        REFERENCES clientes(id_cliente),

    evento VARCHAR(100),

    descripcion TEXT,

    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);