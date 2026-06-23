SET search_path TO kefera;

-- CLEOPATRA

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Cleopatra'
AND e.nombre='Recomendado';

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Cleopatra'
AND e.nombre='Más Vendido';

-- ANUBIS

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Anubis'
AND e.nombre='Premium';

-- HORUS

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Horus'
AND e.nombre='Premium';

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Horus'
AND e.nombre='Más Vendido';

-- RA

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Ra'
AND e.nombre='Recomendado';

-- OSIRIS

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Osiris'
AND e.nombre='Premium';

-- BASTET

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Bastet'
AND e.nombre='Recomendado';

-- SOBEK

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Sobek'
AND e.nombre='Premium';

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Sobek'
AND e.nombre='Más Vendido';

-- SET

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Set'
AND e.nombre='Premium';

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Set'
AND e.nombre='Picante';

-- FARAÓN SUPREMO

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Faraón Supremo'
AND e.nombre='Premium';

INSERT INTO producto_etiquetas
SELECT p.id_producto,e.id_etiqueta
FROM productos p, etiquetas e
WHERE p.nombre='Faraón Supremo'
AND e.nombre='Más Vendido';
