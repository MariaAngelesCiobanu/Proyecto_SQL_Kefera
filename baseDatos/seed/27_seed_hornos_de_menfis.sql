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
4,
'La Gran Pirámide',
'Pizza clásica con tomate artesanal, mozzarella fresca y albahaca.',
'Inspirada en la Gran Pirámide de Guiza, símbolo eterno de Egipto.',
12.90,
1150,
15,
TRUE,
'/images/pizzas/gran_piramide.jpg'
),

(
4,
'Esfinge Dorada',
'Pizza de bacon ahumado, cheddar fundido y cebolla caramelizada.',
'Como la Esfinge, misteriosa, imponente e inolvidable.',
13.90,
1250,
16,
TRUE,
'/images/pizzas/esfinge_dorada.jpg'
),

(
4,
'Obelisco de Luxor',
'Pizza de pollo marinado, mozzarella y salsa BBQ Kefera.',
'Un homenaje a los grandes monumentos de Luxor.',
13.90,
1320,
16,
TRUE,
'/images/pizzas/obelisco_luxor.jpg'
),

(
4,
'Valle de los Reyes',
'Pizza premium con jamón ibérico, champiñones y mozzarella.',
'Inspirada en el legendario lugar de descanso de los faraones.',
14.90,
1280,
16,
TRUE,
'/images/pizzas/valle_reyes.jpg'
),

(
4,
'Biblioteca de Alejandría',
'Pizza vegetariana con pimientos, aceitunas negras, cebolla morada y rúcula.',
'Un tributo al mayor centro de conocimiento del mundo antiguo.',
13.50,
980,
15,
TRUE,
'/images/pizzas/biblioteca_alejandria.jpg'
),

(
4,
'Templo de Karnak',
'Pizza picante con pepperoni, mozzarella y salsa especial de chile.',
'La intensidad y el poder del complejo religioso más grande de Egipto.',
14.90,
1300,
16,
TRUE,
'/images/pizzas/templo_karnak.jpg'
),

(
4,
'Ruta del Nilo',
'Pizza de atún, cebolla roja y aceitunas negras.',
'Inspirada en las rutas comerciales que recorrieron el Nilo durante siglos.',
13.90,
1180,
15,
TRUE,
'/images/pizzas/ruta_nilo.jpg'
),

(
4,
'Trono del Faraón',
'Pizza gourmet con burrata, jamón ibérico, parmesano y aceite trufado.',
'La joya de los Hornos de Menfis, reservada para los verdaderos gobernantes.',
17.90,
1450,
18,
TRUE,
'/images/pizzas/trono_faraon.jpg'
);