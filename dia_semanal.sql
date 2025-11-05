CREATE TABLE dias_semana (
  id_dia SERIAL PRIMARY KEY,
  nombre TEXT
  );
INSERT INTO dias_semana (nombre) VALUES
('Lunes'),
('Martes'),
('Miercoles'),
('Jueves'),
('Viernes'),
('Sabado'),
('Domingo');

CREATE OR REPLACE FUNCTION dia_semanal(dia_elejido DATE)
RETURNS TEXT AS $$
DECLARE
    nombre_dia TEXT;
BEGIN
    SELECT d.nombre INTO nombre_dia FROM dias_semana d WHERE d.id_dia = EXTRACT(ISODOW FROM dia_elejido);
    RETURN nombre_dia;
END;
$$ LANGUAGE plpgsql;

SELECT dia_semanal('2025-11-05');
