CREATE OR REPLACE FUNCTION FunctionRetirarGeneroLogico(
    P_IdGenero UUID
) 
RETURNS void AS $$
BEGIN
    UPDATE "Genero"
    SET "Activo" = '0',
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdGenero" = P_IdGenero
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;