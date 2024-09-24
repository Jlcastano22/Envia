CREATE OR REPLACE FUNCTION FunctionIngresarTipoUsuario(
    P_Nombre VARCHAR
) 
RETURNS void AS $$
BEGIN
    INSERT INTO "TipoUsuario" ("Nombre")
    VALUES (P_Nombre);
END;
$$ LANGUAGE plpgsql;