SET search_path TO kefera;

CREATE TABLE roles (
    id_rol SERIAL PRIMARY KEY,

    nombre VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE permisos (
    id_permiso SERIAL PRIMARY KEY,

    nombre VARCHAR(150) UNIQUE NOT NULL,

    descripcion TEXT
);

CREATE TABLE rol_permiso (
    id_rol INTEGER
        REFERENCES roles(id_rol)
        ON DELETE CASCADE,

    id_permiso INTEGER
        REFERENCES permisos(id_permiso)
        ON DELETE CASCADE,

    PRIMARY KEY (
        id_rol,
        id_permiso
    )
);

CREATE TABLE auditoria (
    id_auditoria SERIAL PRIMARY KEY,

    tabla_afectada VARCHAR(100),

    accion VARCHAR(50),

    usuario_accion VARCHAR(100),

    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    descripcion TEXT
);