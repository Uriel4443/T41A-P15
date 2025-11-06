CREATE TABLE empleado(
  id_empleado SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL,
  departamento INTEGER
);

INSERT INTO empleado (nombre, departamento) VALUES
('Juan Pérez', 1),
('María López', 2),
('Carlos Ruiz', 1),
('Ana Torres', 3),
('Pedro Gómez', 2),
('Laura Sánchez', 3),
('José Díaz', 1),
('Marta Hernández', 4),
('Sofía Rivas', 2),
('Luis Castillo', 3);

CREATE OR REPLACE FUNCTION num_empleados(id_departamento INTEGER)
RETURNS INTEGER AS $$
BEGIN
    RETURN COUNT(*) FROM empleado WHERE departamento=id_departamento; 
END;
$$ LANGUAGE plpgsql;


SELECT num_empleados(4);
