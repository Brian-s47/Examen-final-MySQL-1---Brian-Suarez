-- DDL
DROP DATABASE IF EXISTS pizzeria;

CREATE DATABASE IF NOT EXISTS pizzeria;
USE pizzeria;

-- Creacion de tabla de Ingredientes
CREATE TABLE ingredientes(
id INT auto_increment PRIMARY KEY,
nombre VARCHAR(50)
);

-- Creacion de tabla de Recetas
CREATE TABLE recetas(
id INT auto_increment PRIMARY KEY,
cantidad INT NOT NULL,
foreign key (id_ingrediente) references ingredientes(id),
id_ingrediente INT NOT NULL
);

-- Creacion de tabla de Productos
CREATE TABLE productos(
id INT auto_increment PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
elaborado BOOLEAN NOT NULL,
precio INT NOT NULL CHECK (precio > 0),
foreign key (id_receta) references recetas(id),
id_receta INT
);

-- Creacion de tabla de Combos
CREATE TABLE combos(
id INT auto_increment PRIMARY KEY,
precio INT NOT NULL CHECK (precio > 0),
foreign key (id_producto_1) references productos(id),
id_producto_1 INT,
foreign key (id_producto_2) references productos(id),
id_producto_2 INT,
foreign key (id_bebida_1) references productos(id),
id_bebida_1 INT
);

-- Creacion de tabla de Menu
CREATE TABLE menu(
id INT auto_increment PRIMARY KEY,
foreign key (id_producto) references productos(id),
id_producto INT NOT NULL,
foreign key (id_combo) references combos(id),
id_combo INT NOT NULL
);

-- Creacion de tabla de Adicionales
CREATE TABLE adicionales(
id INT auto_increment PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
precio INT NOT NULL CHECK (precio > 0)
);

-- Creacion de tabla de Pedidos
CREATE TABLE pedidos(
id INT auto_increment PRIMARY KEY,
foreign key (id_producto) references productos(id),
id_producto INT,
foreign key (id_combo) references combos(id),
id_combo INT,
foreign key (id_adicional) references adicionales(id),
id_adicional INT,
total INT NOT NULL CHECK (total > 0),
tipo_pedido BOOLEAN,
nombre VARCHAR(50),
mesa INT,
fecha_hora TIMESTAMP DEFAULT current_timestamp
);
