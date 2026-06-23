SET search_path TO kefera;

CREATE TABLE proveedores (
    id_proveedor SERIAL PRIMARY KEY,

    nombre VARCHAR(150) NOT NULL,

    telefono VARCHAR(30),

    email VARCHAR(255),

    direccion TEXT
);

CREATE TABLE compras_proveedor (
    id_compra SERIAL PRIMARY KEY,

    id_proveedor INTEGER
        REFERENCES proveedores(id_proveedor),

    fecha_compra TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    importe_total NUMERIC(12,2)
);

CREATE TABLE detalle_compra_proveedor (
    id_detalle SERIAL PRIMARY KEY,

    id_compra INTEGER
        REFERENCES compras_proveedor(id_compra)
        ON DELETE CASCADE,

    id_ingrediente INTEGER
        REFERENCES ingredientes(id_ingrediente),

    cantidad NUMERIC(10,2),

    precio_unitario NUMERIC(10,2)
);

CREATE TABLE movimientos_stock (
    id_movimiento SERIAL PRIMARY KEY,

    id_ingrediente INTEGER
        REFERENCES ingredientes(id_ingrediente),

    tipo_movimiento VARCHAR(30),

    cantidad NUMERIC(10,2),

    fecha_movimiento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    observaciones TEXT
);