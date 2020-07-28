CREATE TABLE autor(id_autor SERIAL PRIMARY KEY, nombre_autor VARCHAR(50) NOT NULL);
CREATE TABLE editorial(id_editorial SERIAL PRIMARY KEY, nombre_editorial VARCHAR(50) NOT NULL);
CREATE TABLE cliente(id_cliente SERIAL PRIMARY KEY, nombre_cliente VARCHAR(50) NOT NULL);
CREATE TABLE libro(codigo_libro INT PRIMARY KEY, titulo VARCHAR(50) NOT NULL, id_editorial INT NOT NULL REFERENCES editorial (id_editorial));
CREATE TABLE prestamo(id_cliente INT NOT NULL REFERENCES cliente (id_cliente), codigo_libro INT NOT NULL REFERENCES libro (codigo_libro), fecha_devolucion DATE NOT NULL);
CREATE TABLE autor_libro(id_autor INT NOT NULL REFERENCES autor (id_autor), codigo_libro INT NOT NULL REFERENCES libro (codigo_libro));
