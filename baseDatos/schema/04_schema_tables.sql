SET search_path TO kefera;

CREATE TABLE mesas (
    id_mesa SERIAL PRIMARY KEY,

    id_local INTEGER
        REFERENCES locales(id_local),

    numero_mesa INTEGER NOT NULL,

    capacidad INTEGER,

    codigo_qr VARCHAR(255),

    estado VARCHAR(30) DEFAULT 'LIBRE'
);

CREATE TABLE reservas (
    id_reserva SERIAL PRIMARY KEY,

    id_cliente INTEGER
        REFERENCES clientes(id_cliente),

    id_mesa INTEGER
        REFERENCES mesas(id_mesa),

    fecha_reserva TIMESTAMP,

    num_personas INTEGER,

    estado VARCHAR(30),

    observaciones TEXT
);

CREATE TABLE sesiones_mesa (
    id_sesion SERIAL PRIMARY KEY,

    id_mesa INTEGER
        REFERENCES mesas(id_mesa),

    fecha_apertura TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    fecha_cierre TIMESTAMP,

    estado VARCHAR(30)
);
    
CREATE TABLE llamadas_camarero (
    id_llamada SERIAL PRIMARY KEY,

    id_sesion INTEGER
        REFERENCES sesiones_mesa(id_sesion),

    tipo VARCHAR(30),

    fecha_llamada TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    atendida BOOLEAN DEFAULT FALSE
);