CREATE OR REPLACE FUNCTION FunctionRetirarSedeLogico(
    P_IdSede UUID
) 
RETURNS void AS $$
BEGIN
    UPDATE "Sede"
    SET "Activo" = '0',
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdSede" = P_IdSede
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;