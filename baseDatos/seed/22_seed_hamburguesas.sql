SET search_path TO kefera;

INSERT INTO productos
(
    id_categoria,
    nombre,
    descripcion,
    historia_egipcia,
    precio,
    imagen_principal,
    calorias,
    tiempo_preparacion,
    activo
)
VALUES

(
3,
'Cleopatra',
'Hamburguesa premium con vacuno, cheddar curado, bacon crujiente y salsa Kefera.',
'Inspirada en Cleopatra VII, la reina más famosa de Egipto.',
13.90,
'/images/hamburguesas/cleopatra.jpg',
950,
15,
TRUE
),

(
3,
'Anubis',
'Vacuno premium, queso azul, bacon y cebolla crispy.',
'Inspirada en el dios guardián del inframundo.',
14.90,
'/images/hamburguesas/anubis.jpg',
1050,
16,
TRUE
),

(
3,
'Horus',
'Doble vacuno, cheddar fundido y cebolla caramelizada.',
'Inspirada en Horus, dios del cielo y protector de los faraones.',
15.90,
'/images/hamburguesas/horus.jpg',
1200,
18,
TRUE
),

(
3,
'Ra',
'Vacuno premium, queso cheddar, huevo y salsa especial.',
'Inspirada en Ra, dios supremo del Sol.',
14.50,
'/images/hamburguesas/ra.jpg',
1100,
16,
TRUE
),

(
3,
'Osiris',
'Vacuno premium, queso de cabra, rúcula y cebolla caramelizada.',
'Inspirada en Osiris, dios de la vida y la resurrección.',
15.50,
'/images/hamburguesas/osiris.jpg',
1080,
17,
TRUE
),

(
3,
'Bastet',
'Pollo crujiente, queso cheddar y salsa miel mostaza.',
'Inspirada en Bastet, diosa protectora representada como un felino.',
13.50,
'/images/hamburguesas/bastet.jpg',
890,
14,
TRUE
),

(
3,
'Sobek',
'Doble vacuno, bacon, cheddar y salsa BBQ.',
'Inspirada en Sobek, dios cocodrilo asociado a la fuerza.',
16.50,
'/images/hamburguesas/sobek.jpg',
1300,
18,
TRUE
),

(
3,
'Set',
'Vacuno premium, jalapeños, queso pepper jack y salsa picante.',
'Inspirada en Set, dios del caos y las tormentas.',
15.90,
'/images/hamburguesas/set.jpg',
1150,
17,
TRUE
);

INSERT INTO productos
(
    id_categoria,
    nombre,
    descripcion,
    historia_egipcia,
    precio,
    imagen_principal,
    calorias,
    tiempo_preparacion,
    activo
)
VALUES
(
3,
'Faraón Supremo',
'Doble Angus madurado, cheddar curado, bacon premium, huevo y salsa Kefera.',
'La joya de la corona. El producto insignia de Kefera.',
19.90,
'/images/hamburguesas/faraon_supremo.jpg',
1450,
20,
TRUE
);

SELECT nombre, precio
FROM productos
WHERE id_categoria = 3;