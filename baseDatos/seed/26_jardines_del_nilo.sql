SET search_path TO kefera;

INSERT INTO productos
(
    id_categoria,
    nombre,
    descripcion,
    historia_egipcia,
    precio,
    calorias,
    tiempo_preparacion,
    activo,
    imagen_principal
)
VALUES

(
2,
'Cleopatra',
'Mezcla de lechugas, queso de cabra, nueces, tomate cherry y vinagreta de miel.',
'La elegancia y el equilibrio de la reina del Nilo.',
10.90,
450,
10,
TRUE,
'/images/ensaladas/cleopatra.jpg'
),

(
2,
'Isis',
'Rúcula, aguacate, mango, frutos secos y reducción balsámica.',
'Inspirada en la diosa de la vida y la fertilidad.',
11.50,
420,
10,
TRUE,
'/images/ensaladas/isis.jpg'
),

(
2,
'Bastet',
'Pollo a la parrilla, lechuga romana, parmesano y salsa César.',
'Ligera, elegante y protectora como la diosa felina.',
11.90,
550,
12,
TRUE,
'/images/ensaladas/bastet.jpg'
),

(
2,
'Oasis del Nilo',
'Pepino, tomate, cebolla morada, queso feta y aceitunas negras.',
'Refrescante como las aguas del gran río.',
9.90,
380,
8,
TRUE,
'/images/ensaladas/oasis_nilo.jpg'
),

(
2,
'Jardín del Faraón',
'Quinoa, espinacas, aguacate, zanahoria y semillas variadas.',
'La opción más saludable del reino.',
12.50,
480,
10,
TRUE,
'/images/ensaladas/jardin_faraon.jpg'
),

(
2,
'Horus',
'Salmón ahumado, rúcula, mango y vinagreta cítrica.',
'Una ensalada poderosa inspirada en el dios halcón.',
13.90,
520,
12,
TRUE,
'/images/ensaladas/horus.jpg'
);