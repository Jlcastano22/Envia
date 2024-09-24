CREATE OR REPLACE FUNCTION FunctionRetirarTipoUsuarioLogico(
    P_IdTipoUsuario UUID
) 
RETURNS void AS $$
BEGIN
    UPDATE "TipoUsuario"
    SET "Activo" = '0',
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdTipoUsuario" = P_IdTipoUsuario
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;