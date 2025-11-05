CREATE TABLE productos (
  id_producto SERIAL PRIMARY KEY,
  nombre TEXT,
  stock INTEGER
);
INSERT INTO productos (nombre, stock) VALUES
('Laptop Lenovo', 15),
('Mouse Logitech', 40),
('Teclado Mecánico', 25),
('Monitor Samsung 24"', 10),
('Impresora HP', 8),
('Memoria USB 32GB', 60),
('Disco Duro Externo 1TB', 12),
('Webcam Full HD', 18),
('Parlantes Bluetooth', 30),
('Silla Ergonómica', 7);

CREATE OR REPLACE FUNCTION stock_minimo(cantidad_minima INTEGER)
RETURNS TABLE(id INTEGER, nombre TEXT) AS $$
BEGIN
    RETURN QUERY SELECT p.id_producto, p.nombre FROM productos p WHERE p.stock < cantidad_minima;
END;
$$ LANGUAGE plpgsql;

SELECT stock_minimo(25);
