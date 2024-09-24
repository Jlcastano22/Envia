CREATE OR REPLACE FUNCTION FunctionIngresarTipoDocumento(
    P_Nombre VARCHAR
) 
RETURNS void AS $$
BEGIN
    INSERT INTO "TipoDocumento" ("Nombre")
    VALUES (P_Nombre);
END;
$$ LANGUAGE plpgsql;