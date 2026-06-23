SET search_path TO kefera;

INSERT INTO locales
(
    nombre,
    direccion,
    telefono,
    email,
    horario
)
VALUES
(
    'Kefera',
    'Por definir',
    '+34 647037561',
    'info@kefera.es',
    'Lunes a Domingo 13:30-03:30'
);

select * from locales;
/* nombre = 'Kefera',
    direccion = 'Por definir',
    telefono = '+34 647.37561',
    email = 'info@kefera.es'*/