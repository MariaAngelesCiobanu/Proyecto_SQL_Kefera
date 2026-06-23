SET search_path TO kefera;

CREATE TABLE estados_pedido (
    id_estado SERIAL PRIMARY KEY,

    nombre VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE pedidos (
    id_pedido SERIAL PRIMARY KEY,

    id_sesion INTEGER
        REFERENCES sesiones_mesa(id_sesion),

    id_cliente INTEGER
        REFERENCES clientes(id_cliente),

    id_estado INTEGER
        REFERENCES estados_pedido(id_estado),

    fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE detalle_pedido (
    id_detalle SERIAL PRIMARY KEY,

    id_pedido INTEGER
        REFERENCES pedidos(id_pedido)
        ON DELETE CASCADE,

    id_producto INTEGER
        REFERENCES productos(id_producto),

    cantidad INTEGER NOT NULL,

    precio_unitario NUMERIC(10,2),

    subtotal NUMERIC(10,2),

    observaciones TEXT
);

CREATE TABLE metodos_pago (
    id_metodo SERIAL PRIMARY KEY,

    nombre VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE pagos (
    id_pago SERIAL PRIMARY KEY,

    id_pedido INTEGER
        REFERENCES pedidos(id_pedido),

    id_metodo INTEGER
        REFERENCES metodos_pago(id_metodo),

    importe NUMERIC(10,2),

    fecha_pago TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE division_cuentas (
    id_division SERIAL PRIMARY KEY,

    id_pago INTEGER
        REFERENCES pagos(id_pago),

    nombre_persona VARCHAR(100),

    importe NUMERIC(10,2)
);

CREATE TABLE facturas (
    id_factura SERIAL PRIMARY KEY,

    id_pago INTEGER
        REFERENCES pagos(id_pago),

    numero_factura VARCHAR(100),

    fecha_emision TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);