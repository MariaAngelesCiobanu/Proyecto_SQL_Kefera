SET search_path TO kefera;

-- CLEOPATRA

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,1
FROM productos p, ingredientes i
WHERE p.nombre='Cleopatra' AND i.nombre='Pan Brioche';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,180
FROM productos p, ingredientes i
WHERE p.nombre='Cleopatra' AND i.nombre='Carne Vacuno Premium';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,40
FROM productos p, ingredientes i
WHERE p.nombre='Cleopatra' AND i.nombre='Cheddar';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,30
FROM productos p, ingredientes i
WHERE p.nombre='Cleopatra' AND i.nombre='Bacon';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,15
FROM productos p, ingredientes i
WHERE p.nombre='Cleopatra' AND i.nombre='Lechuga';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,20
FROM productos p, ingredientes i
WHERE p.nombre='Cleopatra' AND i.nombre='Tomate';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,20
FROM productos p, ingredientes i
WHERE p.nombre='Cleopatra' AND i.nombre='Salsa Kefera';

-- ANUBIS

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,1
FROM productos p, ingredientes i
WHERE p.nombre='Anubis' AND i.nombre='Pan Brioche';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,180
FROM productos p, ingredientes i
WHERE p.nombre='Anubis' AND i.nombre='Carne Vacuno Premium';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,35
FROM productos p, ingredientes i
WHERE p.nombre='Anubis' AND i.nombre='Queso Azul';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,30
FROM productos p, ingredientes i
WHERE p.nombre='Anubis' AND i.nombre='Bacon';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,25
FROM productos p, ingredientes i
WHERE p.nombre='Anubis' AND i.nombre='Cebolla';

-- HORUS

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,1
FROM productos p, ingredientes i
WHERE p.nombre='Horus' AND i.nombre='Pan Brioche';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,250
FROM productos p, ingredientes i
WHERE p.nombre='Horus' AND i.nombre='Carne Vacuno Premium';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,50
FROM productos p, ingredientes i
WHERE p.nombre='Horus' AND i.nombre='Cheddar';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,35
FROM productos p, ingredientes i
WHERE p.nombre='Horus' AND i.nombre='Cebolla';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,25
FROM productos p, ingredientes i
WHERE p.nombre='Horus' AND i.nombre='Salsa BBQ';

-- RA

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,1
FROM productos p, ingredientes i
WHERE p.nombre='Ra' AND i.nombre='Pan Brioche';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,200
FROM productos p, ingredientes i
WHERE p.nombre='Ra' AND i.nombre='Carne Vacuno Premium';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,40
FROM productos p, ingredientes i
WHERE p.nombre='Ra' AND i.nombre='Cheddar';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,1
FROM productos p, ingredientes i
WHERE p.nombre='Ra' AND i.nombre='Huevos';

-- OSIRIS

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,1
FROM productos p, ingredientes i
WHERE p.nombre='Osiris' AND i.nombre='Pan Brioche';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,180
FROM productos p, ingredientes i
WHERE p.nombre='Osiris' AND i.nombre='Carne Vacuno Premium';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,35
FROM productos p, ingredientes i
WHERE p.nombre='Osiris' AND i.nombre='Queso de Cabra';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,20
FROM productos p, ingredientes i
WHERE p.nombre='Osiris' AND i.nombre='Rúcula';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,20
FROM productos p, ingredientes i
WHERE p.nombre='Osiris' AND i.nombre='Cebolla';

-- BASTET

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,1
FROM productos p, ingredientes i
WHERE p.nombre='Bastet' AND i.nombre='Pan Brioche';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,180
FROM productos p, ingredientes i
WHERE p.nombre='Bastet' AND i.nombre='Pollo Crujiente';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,35
FROM productos p, ingredientes i
WHERE p.nombre='Bastet' AND i.nombre='Cheddar';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,20
FROM productos p, ingredientes i
WHERE p.nombre='Bastet' AND i.nombre='Lechuga';

-- SOBEK

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,1
FROM productos p, ingredientes i
WHERE p.nombre='Sobek' AND i.nombre='Pan Brioche';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,300
FROM productos p, ingredientes i
WHERE p.nombre='Sobek' AND i.nombre='Carne Vacuno Premium';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,70
FROM productos p, ingredientes i
WHERE p.nombre='Sobek' AND i.nombre='Cheddar';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,50
FROM productos p, ingredientes i
WHERE p.nombre='Sobek' AND i.nombre='Bacon';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,25
FROM productos p, ingredientes i
WHERE p.nombre='Sobek' AND i.nombre='Salsa BBQ';

-- SET

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,1
FROM productos p, ingredientes i
WHERE p.nombre='Set' AND i.nombre='Pan Brioche';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,200
FROM productos p, ingredientes i
WHERE p.nombre='Set' AND i.nombre='Carne Vacuno Premium';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,40
FROM productos p, ingredientes i
WHERE p.nombre='Set' AND i.nombre='Cheddar';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,20
FROM productos p, ingredientes i
WHERE p.nombre='Set' AND i.nombre='Salsa Picante';

-- FARAÓN SUPREMO

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,1
FROM productos p, ingredientes i
WHERE p.nombre='Faraón Supremo' AND i.nombre='Pan Brioche';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,300
FROM productos p, ingredientes i
WHERE p.nombre='Faraón Supremo' AND i.nombre='Carne Angus';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,60
FROM productos p, ingredientes i
WHERE p.nombre='Faraón Supremo' AND i.nombre='Cheddar';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,40
FROM productos p, ingredientes i
WHERE p.nombre='Faraón Supremo' AND i.nombre='Bacon';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,1
FROM productos p, ingredientes i
WHERE p.nombre='Faraón Supremo' AND i.nombre='Huevos';

INSERT INTO producto_ingredientes
SELECT p.id_producto,i.id_ingrediente,20
FROM productos p, ingredientes i
WHERE p.nombre='Faraón Supremo' AND i.nombre='Salsa Kefera';
