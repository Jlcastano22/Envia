CREATE OR REPLACE FUNCTION FunctionIngresarPais(
    P_Nombre VARCHAR
) 
RETURNS void as $$
BEGIN
    INSERT INTO "Pais"("Nombre")
    VALUES(P_Nombre);
END;
$$ LANGUAGE plpgsql;

SELECT "functioningresarpais"('Ecuador')