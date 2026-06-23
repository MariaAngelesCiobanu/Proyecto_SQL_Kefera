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

-- ============================
-- SHISHAS CLÁSICAS
-- ============================

(21,'Menta','Shisha clásica de menta refrescante.','Uno de los sabores más populares del imperio.',12.00,0,5,TRUE,'/images/shishas/menta.jpg'),
(21,'Sandía','Shisha clásica de sandía dulce.','Refrescante y ligera.',12.00,0,5,TRUE,'/images/shishas/sandia.jpg'),
(21,'Mora','Shisha clásica de mora intensa.','Un clásico imprescindible.',12.00,0,5,TRUE,'/images/shishas/mora.jpg'),
(21,'Uva','Shisha clásica de uva dulce.','Tradición oriental en cada calada.',12.00,0,5,TRUE,'/images/shishas/uva.jpg'),
(21,'Melocotón','Shisha clásica de melocotón.','Suave y aromática.',12.00,0,5,TRUE,'/images/shishas/melocoton.jpg'),
(21,'Manzana Doble','La mezcla tradicional más famosa.','Un sabor icónico del mundo shisha.',12.00,0,5,TRUE,'/images/shishas/manzana_doble.jpg'),
(21,'Limón Menta','Mezcla fresca y equilibrada.','Perfecta para cualquier momento.',12.00,0,5,TRUE,'/images/shishas/limon_menta.jpg'),

-- ============================
-- SHISHAS PREMIUM
-- ============================

(21,'Love 66','Maracuyá, sandía y melón.','Sabor premium internacional.',14.00,0,5,TRUE,'/images/shishas/love66.jpg'),
(21,'Blue Mist','Arándanos y menta.','Una de las mezclas más reconocidas.',14.00,0,5,TRUE,'/images/shishas/bluemist.jpg'),
(21,'Lady Killer','Mango, melón y menta.','Mezcla afrutada premium.',14.00,0,5,TRUE,'/images/shishas/ladykiller.jpg'),
(21,'Gummy Bear','Inspirada en caramelos afrutados.','Sabor dulce y moderno.',14.00,0,5,TRUE,'/images/shishas/gummybear.jpg'),
(21,'Blackberry Mint','Mora negra y menta.','Intensa y refrescante.',14.00,0,5,TRUE,'/images/shishas/blackberry_mint.jpg'),
(21,'Dubai Night','Frutas exóticas y especias suaves.','Inspirada en las noches árabes.',14.00,0,5,TRUE,'/images/shishas/dubai_night.jpg'),
(21,'Ice Lime','Lima con efecto hielo.','Muy refrescante.',14.00,0,5,TRUE,'/images/shishas/ice_lime.jpg'),

-- ============================
-- SHISHAS EXCLUSIVAS KEFERA
-- ============================

(21,'Valle Oculto','Love 66, maracuyá y menta helada.','Una mezcla legendaria reservada para exploradores.',15.90,0,5,TRUE,'/images/shishas/valle_oculto.jpg'),
(21,'Pirámide Negra','Uva, mora y regaliz.','Intensa y misteriosa.',15.90,0,5,TRUE,'/images/shishas/piramide_negra.jpg'),
(21,'Oasis Perdido','Melón, sandía y hierbabuena.','Refrescante y tropical.',15.90,0,5,TRUE,'/images/shishas/oasis_perdido.jpg'),
(21,'Santuario de Amón','Cítricos, menta y frutas rojas.','Inspirada en los templos más sagrados de Egipto.',15.90,0,5,TRUE,'/images/shishas/santuario_amon.jpg'),
(21,'Alejandría Nocturna','Arándanos, mora y hielo.','Perfecta para las noches de Kefera.',15.90,0,5,TRUE,'/images/shishas/alejandria_nocturna.jpg'),
(21,'Guardiana del Desierto','Melocotón, vainilla y mango.','Elegante y enigmática.',15.90,0,5,TRUE,'/images/shishas/guardiana_desierto.jpg'),
(21,'Cámara de Keops','Blue Mist y cítricos.','Un secreto guardado durante siglos.',15.90,0,5,TRUE,'/images/shishas/camara_keops.jpg'),
(21,'Desierto Eterno','Kiwi, lima y menta helada.','La más fresca de la casa.',15.90,0,5,TRUE,'/images/shishas/desierto_eterno.jpg'),

-- ============================
-- SHISHAS LEGENDARIAS
-- ============================

(21,'Kefera Royal','Selección premium exclusiva de la casa.','La experiencia definitiva Kefera.',19.90,0,5,TRUE,'/images/shishas/kefera_royal.jpg'),
(21,'Trono de Cleopatra','Mezcla gourmet de frutas exóticas.','Creada para la realeza.',18.90,0,5,TRUE,'/images/shishas/trono_cleopatra.jpg'),
(21,'Tesoro de Tutankamón','Combinación secreta premium.','El tesoro más valioso del imperio.',18.90,0,5,TRUE,'/images/shishas/tesoro_tutankamon.jpg');