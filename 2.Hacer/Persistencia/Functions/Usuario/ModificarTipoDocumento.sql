CREATE OR REPLACE FUNCTION FunctionModificarTipoDocumento(
    P_IdTipoDocumento UUID,
    P_Nombre VARCHAR
) 
RETURNS void AS $$
BEGIN
    UPDATE "TipoDocumento"
    SET "Nombre" = P_Nombre,
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdTipoDocumento" = P_IdTipoDocumento
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;
