CREATE OR REPLACE FUNCTION FunctionModificarTipoUsuario(
    P_IdTipoUsuario UUID,
    P_Nombre VARCHAR
) 
RETURNS void AS $$
BEGIN
    UPDATE "TipoUsuario"
    SET "Nombre" = P_Nombre,
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdTipoUsuario" = P_IdTipoUsuario
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;