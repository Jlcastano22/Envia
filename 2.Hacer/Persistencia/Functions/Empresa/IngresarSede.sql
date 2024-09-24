CREATE OR REPLACE FUNCTION FunctionIngresarSede(
    P_IdEmpresa UUID,
    P_Nombre VARCHAR,
    P_Direccion VARCHAR,
    P_Barrio VARCHAR
) 
RETURNS void AS $$
BEGIN
    INSERT INTO "Sede" ("IdEmpresa", "Nombre", "Direccion", "Barrio")
    VALUES (P_IdEmpresa, P_Nombre, P_Direccion, P_Barrio);
END;
$$ LANGUAGE plpgsql;