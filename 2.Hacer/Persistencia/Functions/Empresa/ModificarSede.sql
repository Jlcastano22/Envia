CREATE OR REPLACE FUNCTION FunctionModificarSede(
    P_IdSede UUID,
    P_Nombre VARCHAR,
    P_Direccion VARCHAR,
    P_Barrio VARCHAR
) 
RETURNS void AS $$
BEGIN
    UPDATE "Sede"
    SET "Nombre" = P_Nombre,
        "Direccion" = P_Direccion,
        "Barrio" = P_Barrio,
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdSede" = P_IdSede
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;