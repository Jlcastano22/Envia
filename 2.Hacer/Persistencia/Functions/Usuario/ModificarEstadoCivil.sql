CREATE OR REPLACE FUNCTION FunctionModificarEstadoCivil(
    P_IdEstadoCivil UUID,
    P_Nombre VARCHAR
) 
RETURNS void AS $$
BEGIN
    UPDATE "EstadoCivil"
    SET "Nombre" = P_Nombre,
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdEstadoCivil" = P_IdEstadoCivil
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;