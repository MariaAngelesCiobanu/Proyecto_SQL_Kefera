SET search_path TO kefera;

INSERT INTO ingredientes
(nombre, unidad_medida, stock_actual, stock_minimo)
VALUES

-- PANES
('Pan Brioche','unidad',100,20),
('Pan Artesano','unidad',100,20),
('Pan Cristal','unidad',100,20),
('Tortilla Wrap','unidad',100,20),

-- CARNES
('Carne Vacuno Premium','kg',50,10),
('Carne Angus','kg',30,5),
('Pollo','kg',40,10),
('Pollo Crujiente','kg',30,5),
('Costillar BBQ','kg',20,5),
('Ternera','kg',25,5),
('Cordero','kg',15,3),
('Solomillo de Ternera','kg',15,3),
('Entrecot','kg',15,3),
('Secreto Ibérico','kg',15,3),
('Presa Ibérica','kg',15,3),
('Carrillera','kg',10,2),

-- QUESOS
('Cheddar','kg',20,5),
('Mozzarella','kg',20,5),
('Queso Azul','kg',10,2),
('Parmesano','kg',10,2),
('Queso de Cabra','kg',10,2),
('Emmental','kg',10,2),
('Feta','kg',10,2),
('Queso Crema','kg',10,2),
('Queso Vegano','kg',10,2),

-- HUEVOS Y LÁCTEOS
('Huevos','unidad',200,50),
('Leche','litro',20,5),
('Mantequilla','kg',10,2),
('Yogur Griego','kg',10,2),
('Leche Condensada','litro',5,1),
('Leche de Avena','litro',15,3),
('Leche de Almendra','litro',15,3),

-- VERDURAS
('Lechuga','kg',20,5),
('Tomate','kg',20,5),
('Cebolla','kg',20,5),
('Cebolla Morada','kg',10,2),
('Pepinillo','kg',10,2),
('Pimiento Rojo','kg',10,2),
('Pimiento Verde','kg',10,2),
('Champiñones','kg',10,2),
('Rúcula','kg',10,2),
('Maíz','kg',10,2),
('Pepino','kg',10,2),
('Zanahoria','kg',10,2),
('Berenjena','kg',10,2),
('Calabacín','kg',10,2),
('Espinacas','kg',10,2),

-- LEGUMBRES
('Garbanzos','kg',10,2),
('Lentejas','kg',10,2),
('Alubias Rojas','kg',10,2),
('Hummus','kg',10,2),

-- FRUTOS SECOS
('Almendra','kg',5,1),
('Nuez','kg',5,1),
('Avellana','kg',5,1),
('Pistacho','kg',5,1),
('Anacardo','kg',5,1),
('Piñones','kg',3,1),
('Cacahuete','kg',5,1),

-- SEMILLAS
('Sésamo','kg',3,1),
('Chía','kg',3,1),
('Lino','kg',3,1),
('Pipas de Girasol','kg',3,1),
('Pipas de Calabaza','kg',3,1),

-- PRODUCTOS VEGANOS
('Hamburguesa Vegetal','kg',15,3),
('Heura','kg',15,3),
('Tofu','kg',10,2),

-- PATATAS Y GUARNICIONES
('Patatas','kg',50,10),
('Patata Gajo','kg',20,5),
('Patata Dulce','kg',15,3),
('Arroz Basmati','kg',20,5),
('Arroz Jazmín','kg',20,5),
('Cuscús','kg',20,5),
('Verduras Asadas','kg',15,3),
('Mazorca','unidad',20,5),

-- SALSAS
('Salsa Kefera','litro',10,2),
('Mayonesa','litro',10,2),
('Ketchup','litro',10,2),
('Mostaza','litro',10,2),
('Salsa BBQ','litro',10,2),
('Salsa Trufa','litro',5,1),
('Salsa Yogur','litro',10,2),
('Salsa Picante','litro',5,1),
('Salsa César','litro',10,2),

-- PIZZAS
('Masa Pizza','unidad',100,20),
('Tomate Pizza','kg',20,5),
('Pepperoni','kg',10,2),
('Jamón York','kg',10,2),
('Atún','kg',10,2),
('Aceitunas','kg',10,2),

-- PASTAS
('Espaguetis','kg',20,5),
('Penne','kg',20,5),
('Tagliatelle','kg',20,5),

-- PESCADOS
('Salmón','kg',15,3),
('Atún Fresco','kg',15,3),
('Bacalao','kg',15,3),
('Lubina','kg',10,2),
('Dorada','kg',10,2),
('Corvina','kg',10,2),

-- MARISCOS
('Langostinos','kg',10,2),
('Calamares','kg',10,2),
('Gambas','kg',10,2),
('Mejillones','kg',10,2),
('Pulpo','kg',10,2),
('Vieiras','kg',5,1),

-- FRUTAS
('Fresa','kg',10,2),
('Mango','kg',10,2),
('Piña','kg',10,2),
('Plátano','kg',10,2),
('Naranja','kg',10,2),
('Manzana','kg',10,2),
('Limón','kg',10,2),
('Lima','kg',10,2),
('Frutos Rojos','kg',10,2),
('Granada','kg',10,2),
('Dátiles','kg',10,2),

-- POSTRES
('Chocolate Negro','kg',10,2),
('Chocolate Blanco','kg',10,2),
('Galleta','kg',10,2),
('Nata','litro',10,2),
('Helado Vainilla','kg',10,2),
('Helado Chocolate','kg',10,2),
('Caramelo','kg',5,1),
('Miel','kg',10,2),
('Miel Egipcia','kg',5,1),
('Pasta Filo','kg',10,2),
('Sémola','kg',10,2),
('Pistacho Molido','kg',5,1),

-- INFUSIONES Y TETERÍA
('Té Negro','kg',5,1),
('Té Verde','kg',5,1),
('Té Moruno','kg',5,1),
('Té Chai','kg',5,1),
('Té Rooibos','kg',5,1),
('Té Jazmín','kg',5,1),
('Té Frutos del Bosque','kg',5,1),
('Té Canela','kg',5,1),
('Manzanilla','kg',5,1),
('Hierbabuena','kg',5,1),
('Azahar','kg',2,1),

-- CAFÉS
('Café Arábica','kg',10,2),

-- CÓCTELES Y BEBIDAS
('Ron','litro',20,5),
('Vodka','litro',20,5),
('Ginebra','litro',20,5),
('Tequila','litro',20,5),
('Whisky','litro',20,5),
('Triple Sec','litro',10,2),
('Granadina','litro',10,2),
('Azúcar Moreno','kg',10,2),
('Sirope Vainilla','litro',5,1),
('Sirope Coco','litro',5,1),
('Sirope Mango','litro',5,1),
('Agua Tónica','litro',20,5),
('Refresco Cola','litro',20,5),
('Zumo Piña','litro',20,5),
('Zumo Naranja','litro',20,5),

-- SHISHAS
('Love66','kg',5,1),
('Blue Mist','kg',5,1),
('Menta Shisha','kg',5,1),
('Doble Manzana','kg',5,1),
('Uva Menta','kg',5,1),
('Mora Shisha','kg',5,1),

-- ESPECIAS
('Comino','kg',2,1),
('Canela','kg',2,1),
('Pimienta Negra','kg',2,1),
('Pimentón','kg',2,1),
('Curry','kg',2,1),
('Orégano','kg',2,1),
('Cardamomo','kg',2,1),
('Cilantro','kg',2,1),
('Nuez Moscada','kg',2,1),
('Jengibre','kg',2,1),
('Azafrán','kg',1,1),
('Harissa','kg',2,1),
('Zaatar','kg',2,1),
('Agua de Azahar','litro',5,1);

select * from ingredientes;