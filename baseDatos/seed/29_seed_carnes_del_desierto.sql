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
6,
'Tutankamón',
'Solomillo de ternera premium acompañado de patatas gajo y verduras asadas.',
'El joven faraón cuyo tesoro fascinó al mundo.',
21.90,
1250,
20,
TRUE,
'/images/carnes/tutankamon.jpg'
),

(
6,
'Ramsés II',
'Entrecot madurado de 350g acompañado de patatas especiadas.',
'Uno de los faraones más poderosos de la historia.',
24.90,
1450,
22,
TRUE,
'/images/carnes/ramses.jpg'
),

(
6,
'Akenatón',
'Pechuga de pollo marinada con especias orientales y arroz basmati.',
'El faraón revolucionario que cambió la religión de Egipto.',
16.90,
980,
18,
TRUE,
'/images/carnes/akenaton.jpg'
),

(
6,
'Amenhotep',
'Secreto ibérico a la brasa con verduras del desierto.',
'Representa la prosperidad y el esplendor de una era dorada.',
22.90,
1320,
20,
TRUE,
'/images/carnes/amenhotep.jpg'
),

(
6,
'Keops',
'Costillar BBQ glaseado con miel egipcia y patatas rústicas.',
'Inspirado en el constructor de la Gran Pirámide.',
23.90,
1680,
25,
TRUE,
'/images/carnes/keops.jpg'
),

(
6,
'Kefrén',
'Presa ibérica premium con salsa de reducción balsámica.',
'El faraón asociado a la Gran Esfinge.',
22.90,
1380,
22,
TRUE,
'/images/carnes/kefren.jpg'
),

(
6,
'Micerino',
'Carrillera estofada lentamente con especias orientales.',
'El más enigmático de los grandes constructores de Guiza.',
20.90,
1180,
24,
TRUE,
'/images/carnes/micerino.jpg'
),

(
6,
'Narmer',
'Parrillada imperial con selección de carnes premium para compartir.',
'El unificador del Alto y Bajo Egipto.',
29.90,
2200,
30,
TRUE,
'/images/carnes/narmer.jpg'
);