CREATE OR REPLACE FUNCTION FunctionIngresarEmpresa(
    P_RazonSocial VARCHAR,
    P_Nit VARCHAR,
    P_Conmutador VARCHAR
) 
RETURNS void AS $$
BEGIN
    INSERT INTO "Empresa" ("RazonSocial", "Nit", "Conmutador")
    VALUES (P_RazonSocial, P_Nit, P_Conmutador);
END;
$$ LANGUAGE plpgsql;