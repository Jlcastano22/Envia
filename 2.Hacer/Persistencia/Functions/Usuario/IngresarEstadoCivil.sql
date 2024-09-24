CREATE OR REPLACE FUNCTION FunctionIngresarEstadoCivil(
    P_Nombre VARCHAR
) 
RETURNS void AS $$
BEGIN
    INSERT INTO "EstadoCivil" ("Nombre")
    VALUES (P_Nombre);
END;
$$ LANGUAGE plpgsql;