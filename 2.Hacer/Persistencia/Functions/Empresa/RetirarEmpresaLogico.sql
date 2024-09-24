CREATE OR REPLACE FUNCTION FunctionRetirarEmpresaLogico(
    P_IdEmpresa UUID
) 
RETURNS void AS $$
BEGIN
    UPDATE "Empresa" 
    SET "Activo" = '0',
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdEmpresa" = P_IdEmpresa
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;