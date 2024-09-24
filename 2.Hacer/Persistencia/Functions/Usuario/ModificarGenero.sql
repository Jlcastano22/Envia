CREATE OR REPLACE FUNCTION FunctionModificarGenero(
    P_IdGenero UUID,
    P_Nombre VARCHAR
) 
RETURNS void AS $$
BEGIN
    UPDATE "Genero"
    SET "Nombre" = P_Nombre,
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdGenero" = P_IdGenero
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;