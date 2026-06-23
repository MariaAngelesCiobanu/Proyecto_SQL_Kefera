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
7,
'Alejandría',
'Salmón a la plancha con verduras asadas y salsa cítrica.',
'La joya del Mediterráneo egipcio.',
19.90,
950,
18,
TRUE,
'/images/mar/alejandria.jpg'
),

(
7,
'Luxor',
'Lubina al horno con especias orientales.',
'Inspirado en la ciudad de los templos.',
20.90,
920,
20,
TRUE,
'/images/mar/luxor.jpg'
),

(
7,
'Abidos',
'Bacalao confitado con crema suave de ajo.',
'Una de las ciudades más sagradas del antiguo Egipto.',
18.90,
890,
18,
TRUE,
'/images/mar/abidos.jpg'
),

(
7,
'Asuán',
'Langostinos salteados con mantequilla y limón.',
'La puerta sur del Nilo.',
21.90,
980,
16,
TRUE,
'/images/mar/asuan.jpg'
),

(
7,
'Heliópolis',
'Pulpo a la brasa con patata cremosa.',
'La ciudad del Sol convertida en plato.',
24.90,
1050,
22,
TRUE,
'/images/mar/heliopolis.jpg'
),

(
7,
'Puerto Real',
'Parrillada de mariscos para compartir.',
'Un homenaje a los grandes puertos comerciales egipcios.',
29.90,
1700,
25,
TRUE,
'/images/mar/puerto_real.jpg'
);