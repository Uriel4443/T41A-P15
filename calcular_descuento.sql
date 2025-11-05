CREATE OR REPLACE FUNCTION calcular_descuento(precio_original NUMERIC, porcentaje NUMERIC)
RETURNS NUMERIC AS $$
BEGIN
    RETURN precio_original - (precio_original* porcentaje);
END;
$$ LANGUAGE plpgsql;
