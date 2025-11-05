CREATE OR REPLACE FUNCTION contiene_correo(correo TEXT)
RETURNS BOOLEAN AS $$
BEGIN
    IF correo LIKE '%@%' THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
$$ LANGUAGE plpgsql;

SELECT contiene_correo('HOLAgmail.com');
