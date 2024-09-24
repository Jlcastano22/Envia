CREATE OR REPLACE FUNCTION FunctionRetirarTipoDocumentoLogico(
    P_IdTipoDocumento UUID
) 
RETURNS void AS $$
BEGIN
    UPDATE "TipoDocumento"
    SET "Activo" = '0',
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdTipoDocumento" = P_IdTipoDocumento
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;