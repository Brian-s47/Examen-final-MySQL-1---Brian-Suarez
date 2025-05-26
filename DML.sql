-- DML

-- Insercion de datos de Ingredientes
INSERT INTO ingredientes (nombre) VALUES
("Carne"),
("Queso"),
("Pepinillos"),
("Pollo"),
("Tomate");

-- Insercion de datos de Recetas
INSERT INTO recetas (cantidad, id_ingrediente) VALUES
(2, 1),
(1, 2),
(5, 3),
(1, 4),
(4, 5);

-- Insercion de datos de Productos
INSERT INTO productos (nombre, elaborado, precio, id_receta) VALUES
("Pizza Carnes", 1, 20.00, 1),
("Pizza Pollo", 1, 40.00, 2),
("Panzeroti pollo", 1, 30.00, 3),
("Panzeroti carne", 1, 25.00, 4),
("Panzeroti pepinillos", 1, 60.00, 5),
("Gaseosa personal", 0, 5.00, 1),
("Gaseosa Litro", 0, 10.00, 1);

-- Insercion de datos de Combos
INSERT INTO combos (precio, id_producto_1, id_producto_2, id_bebida_1) VALUES
(70.00, 1, 2, 5),
(30.00, 1, 3, 6);

-- Insercion de datos de Menu


-- Insercion de datos de Adicionales
INSERT INTO adicionales (nombre, precio) VALUES
("Extra queso", 7.00),
("Extra carne", 8.00),
("Extra pollo", 6.00);

-- Insercion de datos de Pedidos
INSERT INTO pedidos (id_producto, id_combo, id_adicional, total, tipo_pedido, nombre, mesa) VALUES
(1, 1, 3, 60.00, 1, "Brian Suarez", 1),
(4, 2, 2, 90.00, 0, "Yuliana Gomez", 2),
(2, 1, 2, 550.00, 1, "Juan Lopez", 1),
(5, 2, 1, 150.00, 1, "Maria Suarez", 1),
(5, 2, 1, 100.00, 0, "Rosa Pabon", 2);


