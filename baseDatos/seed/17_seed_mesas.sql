SET search_path TO kefera;

INSERT INTO mesas
(
    id_local,
    numero_mesa,
    capacidad,
    estado
)
VALUES

(1,1,2,'LIBRE'),
(1,2,2,'LIBRE'),
(1,3,4,'LIBRE'),
(1,4,4,'LIBRE'),
(1,5,4,'LIBRE'),

(1,6,6,'LIBRE'),
(1,7,6,'LIBRE'),
(1,8,6,'LIBRE'),

(1,9,8,'LIBRE'),
(1,10,8,'LIBRE'),

(1,11,2,'LIBRE'),
(1,12,2,'LIBRE'),

(1,13,4,'LIBRE'),
(1,14,4,'LIBRE'),
(1,15,4,'LIBRE'),

(1,16,6,'LIBRE'),
(1,17,6,'LIBRE'),

(1,18,8,'LIBRE'),
(1,19,8,'LIBRE'),

(1,20,10,'LIBRE');

select * from mesas;