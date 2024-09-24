CREATE OR REPLACE FUNCTION FunctionIngresarDepartamento(
    P_IdPais UUID,
	P_Nombre VARCHAR
) 
RETURNS void as $$
BEGIN
    INSERT INTO "Departamento" ("IdPais", "Nombre")
    VALUES (P_IdPais, P_Nombre);	
END;
$$ LANGUAGE plpgsql;

SELECT "functioningresardepartamento"('bcf3a734-5c9e-4593-a939-4da133a14058', 'Guajira');