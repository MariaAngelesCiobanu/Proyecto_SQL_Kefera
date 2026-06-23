SET search_path TO kefera;

INSERT INTO productos
(
    id_categoria,
    nombre,
    descripcion,
    precio,
    imagen_principal,
    activo
)
VALUES

-- ============================
-- ZUMOS DEL NILO (10)
-- ============================

(10,'Amanecer del Nilo','Naranja, zanahoria y jengibre.',4.90,'/images/zumos/amanecer_nilo.jpg',TRUE),
(10,'Jardines de Isis','Manzana verde, pepino y hierbabuena.',4.90,'/images/zumos/jardines_isis.jpg',TRUE),
(10,'Tesoro de Cleopatra','Fresa, frambuesa y granada.',5.20,'/images/zumos/tesoro_cleopatra.jpg',TRUE),
(10,'Oasis Tropical','Piña, mango y maracuyá.',4.90,'/images/zumos/oasis_tropical.jpg',TRUE),

-- ============================
-- BATIDOS DEL PALACIO (11)
-- ============================

(11,'Batido de Cleopatra','Fresa, vainilla y nata.',5.50,'/images/batidos/cleopatra.jpg',TRUE),
(11,'Batido de Anubis','Chocolate negro y galleta.',5.50,'/images/batidos/anubis.jpg',TRUE),
(11,'Batido del Faraón','Chocolate blanco y caramelo.',5.90,'/images/batidos/faraon.jpg',TRUE),
(11,'Batido del Nilo','Mango y coco.',5.50,'/images/batidos/nilo.jpg',TRUE),

-- ============================
-- SMOOTHIES SAGRADOS (12)
-- ============================

(12,'Oasis Verde','Espinaca, kiwi, manzana y plátano.',5.50,'/images/smoothies/oasis_verde.jpg',TRUE),
(12,'Fuego de Ra','Mango, piña y maracuyá.',5.50,'/images/smoothies/fuego_ra.jpg',TRUE),
(12,'Sueño de Hathor','Arándanos, mora y yogur griego.',5.50,'/images/smoothies/sueno_hathor.jpg',TRUE),
(12,'Jardín del Faraón','Apio, pepino, manzana, limón y espinaca.',5.50,'/images/smoothies/jardin_faraon.jpg',TRUE),

-- ============================
-- LIMONADAS DE ALEJANDRÍA (13)
-- ============================

(13,'Limonada Clásica','Limón natural recién exprimido.',4.50,'/images/limonadas/clasica.jpg',TRUE),
(13,'Limonada Hierbabuena','Limón e hierbabuena fresca.',4.90,'/images/limonadas/hierbabuena.jpg',TRUE),
(13,'Limonada Frutos Rojos','Limón y frutos rojos.',5.20,'/images/limonadas/frutos_rojos.jpg',TRUE),
(13,'Limonada Tropical','Limón, mango y piña.',5.20,'/images/limonadas/tropical.jpg',TRUE),

-- ============================
-- CAFÉS DE MENFIS (14)
-- ============================

(14,'Espresso','Café espresso.',1.80,'/images/cafes/espresso.jpg',TRUE),
(14,'Doble Espresso','Doble carga de café.',2.10,'/images/cafes/doble_espresso.jpg',TRUE),
(14,'Cortado','Espresso con leche.',1.90,'/images/cafes/cortado.jpg',TRUE),
(14,'Americano','Café americano.',2.00,'/images/cafes/americano.jpg',TRUE),
(14,'Café con Leche','Café y leche.',2.20,'/images/cafes/cafe_leche.jpg',TRUE),
(14,'Cappuccino','Café con espuma cremosa.',2.50,'/images/cafes/cappuccino.jpg',TRUE),
(14,'Latte Macchiato','Latte suave.',2.80,'/images/cafes/latte.jpg',TRUE),
(14,'Café del Faraón','Canela, cardamomo y miel.',3.50,'/images/cafes/faraon.jpg',TRUE),
(14,'Café Anubis','Chocolate negro y especias.',3.50,'/images/cafes/anubis.jpg',TRUE),

-- ============================
-- INFUSIONES DEL TEMPLO (15)
-- ============================

(15,'Té Moruno','Té moruno tradicional.',2.30,'/images/infusiones/moruno.jpg',TRUE),
(15,'Té Verde','Té verde natural.',2.30,'/images/infusiones/verde.jpg',TRUE),
(15,'Té Negro','Té negro intenso.',2.30,'/images/infusiones/negro.jpg',TRUE),
(15,'Frutos Rojos','Infusión de frutos rojos.',2.30,'/images/infusiones/frutos_rojos.jpg',TRUE),
(15,'Manzanilla','Infusión de manzanilla.',2.30,'/images/infusiones/manzanilla.jpg',TRUE),
(15,'Menta Poleo','Infusión digestiva.',2.30,'/images/infusiones/poleo.jpg',TRUE),
(15,'Rooibos','Rooibos africano.',2.30,'/images/infusiones/rooibos.jpg',TRUE),
(15,'Té de Isis','Especial Kefera.',2.80,'/images/infusiones/isis.jpg',TRUE),
(15,'Té de Hathor','Especial Kefera.',2.80,'/images/infusiones/hathor.jpg',TRUE),
(15,'Té del Nilo','Especial Kefera.',2.80,'/images/infusiones/nilo.jpg',TRUE),

-- ============================
-- CÓCTELES DE LOS DIOSES (16)
-- ============================

(16,'Isis','Vodka premium, frutos rojos y vainilla.',9.50,'/images/cocteles/isis.jpg',TRUE),
(16,'Ra','Ron blanco, mango y maracuyá.',9.50,'/images/cocteles/ra.jpg',TRUE),
(16,'Anubis','Ron oscuro, café espresso y chocolate.',9.50,'/images/cocteles/anubis.jpg',TRUE),
(16,'Hathor','Vodka, lichi y arándanos.',9.50,'/images/cocteles/hathor.jpg',TRUE),
(16,'Osiris','Ginebra, pepino, albahaca y limón.',9.50,'/images/cocteles/osiris.jpg',TRUE),
(16,'Seth','Tequila, chile y lima.',9.50,'/images/cocteles/seth.jpg',TRUE),

-- ============================
-- CERVEZAS DEL IMPERIO (17)
-- ============================

(17,'Cruzcampo','Cerveza nacional.',2.50,'/images/cervezas/cruzcampo.jpg',TRUE),
(17,'Mahou 5 Estrellas','Cerveza nacional.',2.60,'/images/cervezas/mahou5.jpg',TRUE),
(17,'Mahou Clásica','Cerveza nacional.',2.50,'/images/cervezas/mahou.jpg',TRUE),
(17,'Alhambra Especial','Cerveza nacional.',3.20,'/images/cervezas/alhambra.jpg',TRUE),
(17,'Estrella Galicia','Cerveza nacional.',2.60,'/images/cervezas/galicia.jpg',TRUE),
(17,'1906 Reserva Especial','Cerveza premium.',3.20,'/images/cervezas/1906.jpg',TRUE),
(17,'Heineken','Cerveza internacional.',2.90,'/images/cervezas/heineken.jpg',TRUE),
(17,'Corona','Cerveza internacional.',2.90,'/images/cervezas/corona.jpg',TRUE),
(17,'Becks','Cerveza internacional.',2.90,'/images/cervezas/becks.jpg',TRUE),
(17,'Desperados','Cerveza internacional.',3.20,'/images/cervezas/desperados.jpg',TRUE),

-- ============================
-- VINOS DE LAS DINASTÍAS (18)
-- ============================

(18,'Ramón Bilbao Crianza','Vino tinto.',18.00,'/images/vinos/rb_crianza.jpg',TRUE),
(18,'Marqués de Riscal Reserva','Vino tinto.',21.00,'/images/vinos/riscal_reserva.jpg',TRUE),
(18,'Protos Roble','Vino tinto.',16.00,'/images/vinos/protos.jpg',TRUE),
(18,'Alma de Cántaro','Vino tinto.',14.00,'/images/vinos/alma.jpg',TRUE),
(18,'Verdejo Viña Esmeralda','Vino blanco.',16.00,'/images/vinos/esmeralda.jpg',TRUE),
(18,'Marqués de Riscal Verdejo','Vino blanco.',15.00,'/images/vinos/riscal_verdejo.jpg',TRUE),
(18,'Albariño Pazo de San Mauro','Vino blanco.',18.00,'/images/vinos/albarino.jpg',TRUE),
(18,'Protos Verdejo','Vino blanco.',16.00,'/images/vinos/protos_verdejo.jpg',TRUE),
(18,'Lambrusco Rosado','Vino rosado.',14.00,'/images/vinos/lambrusco.jpg',TRUE),
(18,'Mateus Rosé','Vino rosado.',13.00,'/images/vinos/mateus.jpg',TRUE),

-- ============================
-- REFRESCOS DEL OASIS (9)
-- ============================

(9,'Coca-Cola','Refresco.',2.50,'/images/refrescos/cocacola.jpg',TRUE),
(9,'Coca-Cola Zero','Refresco.',2.50,'/images/refrescos/cocacolazero.jpg',TRUE),
(9,'Fanta Naranja','Refresco.',2.50,'/images/refrescos/fantanaranja.jpg',TRUE),
(9,'Fanta Limón','Refresco.',2.50,'/images/refrescos/fantalimon.jpg',TRUE),
(9,'Sprite','Refresco.',2.50,'/images/refrescos/sprite.jpg',TRUE),
(9,'Nestea','Refresco.',2.50,'/images/refrescos/nestea.jpg',TRUE),
(9,'Aquarius Limón','Refresco.',2.50,'/images/refrescos/aquarius_limon.jpg',TRUE),
(9,'Aquarius Naranja','Refresco.',2.50,'/images/refrescos/aquarius_naranja.jpg',TRUE),
(9,'Kas Limón','Refresco.',2.50,'/images/refrescos/kas_limon.jpg',TRUE),
(9,'Kas Naranja','Refresco.',2.50,'/images/refrescos/kas_naranja.jpg',TRUE),

-- ============================
-- CHUPITOS DE LOS DIOSES (20)
-- ============================

(20,'Isis','Lichi, arándano y vodka.',3.00,'/images/chupitos/isis.jpg',TRUE),
(20,'Anubis','Café, chocolate y ron.',3.00,'/images/chupitos/anubis.jpg',TRUE),
(20,'Ra','Mango, maracuyá y ron.',3.00,'/images/chupitos/ra.jpg',TRUE),
(20,'Hathor','Fresa, piña y vodka.',3.00,'/images/chupitos/hathor.jpg',TRUE),
(20,'Osiris','Menta, lima y vodka.',3.00,'/images/chupitos/osiris.jpg',TRUE),
(20,'Sobek','Manzana verde y tequila.',3.00,'/images/chupitos/sobek.jpg',TRUE);

SELECT
    c.nombre AS categoria,
    COUNT(*) AS total_productos
FROM productos p
JOIN categorias c
    ON p.id_categoria = c.id_categoria
GROUP BY c.id_categoria, c.nombre
ORDER BY c.id_categoria;