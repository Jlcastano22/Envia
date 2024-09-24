CREATE OR REPLACE FUNCTION FunctionModificarEmpresa(
    P_IdEmpresa UUID,
    P_RazonSocial VARCHAR,
    P_Nit VARCHAR,
    P_Conmutador VARCHAR
) 
RETURNS void AS $$
BEGIN
    UPDATE "Empresa" 
    SET "RazonSocial" = P_RazonSocial,
        "Nit" = P_Nit,
        "Conmutador" = P_Conmutador,
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdEmpresa" = P_IdEmpresa
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;