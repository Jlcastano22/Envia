CREATE OR REPLACE FUNCTION FunctionRetirarEstadoCivilLogico(
    P_IdEstadoCivil UUID
) 
RETURNS void AS $$
BEGIN
    UPDATE "EstadoCivil"
    SET "Activo" = '0',
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdEstadoCivil" = P_IdEstadoCivil
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;