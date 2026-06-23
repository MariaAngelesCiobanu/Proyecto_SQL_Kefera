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
8,
'La Corona de Cleopatra',
'Tarta de queso cremosa con frutos rojos y coulis artesanal.',
'La elegancia y el poder de la última reina de Egipto.',
6.90,
650,
8,
TRUE,
'/images/postres/corona_cleopatra.jpg'
),

(
8,
'La Máscara de Tutankamón',
'Coulant de chocolate negro con corazón fundido y helado de vainilla.',
'Inspirado en uno de los mayores tesoros jamás descubiertos.',
7.90,
850,
10,
TRUE,
'/images/postres/mascara_tutankamon.jpg'
),

(
8,
'El Ojo de Horus',
'Brownie de chocolate con nueces y salsa de caramelo.',
'El símbolo de protección más famoso del antiguo Egipto.',
6.50,
720,
8,
TRUE,
'/images/postres/ojo_horus.jpg'
),

(
8,
'Escarabajo Dorado',
'Baklava tradicional con pistacho y miel egipcia.',
'Representa la prosperidad y el renacimiento.',
5.90,
580,
5,
TRUE,
'/images/postres/escarabajo_dorado.jpg'
),

(
8,
'Tesoro del Nilo',
'Copa de frutas frescas, yogur griego y miel.',
'Los sabores que florecen junto al gran río.',
5.50,
420,
4,
TRUE,
'/images/postres/tesoro_nilo.jpg'
),

(
8,
'Pirámide de Caramelo',
'Torre de tortitas con caramelo salado y nata montada.',
'Una construcción dulce digna de los faraones.',
7.50,
890,
10,
TRUE,
'/images/postres/piramide_caramelo.jpg'
),

(
8,
'Jardines de Hathor',
'Helado artesanal de mango, coco y frutos tropicales.',
'Hathor era la diosa de la alegría y la celebración.',
5.90,
480,
3,
TRUE,
'/images/postres/jardines_hathor.jpg'
),

(
8,
'Trono Imperial',
'Degustación de mini postres para compartir.',
'La experiencia dulce definitiva de Kefera.',
12.90,
1250,
12,
TRUE,
'/images/postres/trono_imperial.jpg'
);