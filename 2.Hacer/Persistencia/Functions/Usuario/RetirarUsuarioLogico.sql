CREATE OR REPLACE FUNCTION FunctionRetirarUsuarioLogico(
    P_IdUsuario UUID
) 
RETURNS void AS $$
BEGIN
    UPDATE "Usuario"
    SET "Activo" = '0',
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdUsuario" = P_IdUsuario
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;