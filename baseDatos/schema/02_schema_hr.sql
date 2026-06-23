SET search_path TO kefera;

CREATE TABLE cargos (
    id_cargo SERIAL PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE empleados (
    id_empleado SERIAL PRIMARY KEY,
    id_cargo INTEGER REFERENCES cargos(id_cargo),

    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150),

    usuario VARCHAR(100) UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,

    telefono VARCHAR(30),

    fecha_alta DATE,
    fecha_baja DATE,

    activo BOOLEAN DEFAULT TRUE
);

CREATE TABLE historial_laboral (
    id_historial SERIAL PRIMARY KEY,

    id_empleado INTEGER REFERENCES empleados(id_empleado),

    id_cargo INTEGER REFERENCES cargos(id_cargo),

    fecha_inicio DATE,
    fecha_fin DATE,

    motivo TEXT
);

CREATE TABLE turnos (
    id_turno SERIAL PRIMARY KEY,

    id_empleado INTEGER REFERENCES empleados(id_empleado),

    fecha DATE,

    hora_inicio TIME,
    hora_fin TIME
);