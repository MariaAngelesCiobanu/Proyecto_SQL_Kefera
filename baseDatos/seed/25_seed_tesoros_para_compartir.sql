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
1,
'Falafel de Isis',
'Crujientes bolas de garbanzo especiadas acompañadas de salsa yogur.',
'Inspirado en Isis, diosa de la sabiduría y la protección.',
7.90,
550,
10,
TRUE,
'/images/compartir/falafel_isis.jpg'
),

(
1,
'Hummus del Faraón',
'Hummus artesanal con aceite de oliva virgen extra y pan caliente.',
'Una receta digna de los banquetes reales del antiguo Egipto.',
6.90,
480,
8,
TRUE,
'/images/compartir/hummus_faraon.jpg'
),

(
1,
'Patatas Anubis',
'Patatas gajo crujientes con salsa Kefera y especias secretas.',
'Un homenaje al guardián del inframundo.',
6.50,
620,
12,
TRUE,
'/images/compartir/patatas_anubis.jpg'
),

(
1,
'Alitas del Nilo',
'Alitas marinadas con miel y especias orientales.',
'Inspiradas en las rutas comerciales del Nilo.',
8.90,
780,
15,
TRUE,
'/images/compartir/alitas_nilo.jpg'
),

(
1,
'Croquetas de Cleopatra',
'Cremosas croquetas de jamón ibérico.',
'La elegancia hecha aperitivo.',
8.50,
650,
12,
TRUE,
'/images/compartir/croquetas_cleopatra.jpg'
),

(
1,
'Nachos de Menfis',
'Nachos gratinados con cheddar, guacamole y salsa especial.',
'Inspirados en la antigua capital de Menfis.',
9.90,
980,
15,
TRUE,
'/images/compartir/nachos_menfis.jpg'
),

(
1,
'Langostinos de Alejandría',
'Langostinos crujientes con salsa cítrica.',
'Un guiño al gran puerto de Alejandría.',
10.90,
520,
12,
TRUE,
'/images/compartir/langostinos_alejandria.jpg'
),

(
1,
'Tabla Imperial Kefera',
'Selección premium para compartir con quesos, embutidos y panes.',
'La joya de los entrantes de Kefera.',
15.90,
1200,
18,
TRUE,
'/images/compartir/tabla_imperial.jpg'
);