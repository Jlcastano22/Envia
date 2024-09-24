CREATE OR REPLACE FUNCTION FunctionIngresarGenero(
    P_Nombre VARCHAR
) 
RETURNS void AS $$
BEGIN
    INSERT INTO "Genero" ("Nombre")
    VALUES (P_Nombre);
END;
$$ LANGUAGE plpgsql;