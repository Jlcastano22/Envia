CREATE OR REPLACE FUNCTION FunctionIngresarCiudad(
    P_IdDepartamento UUID,
	P_Nombre VARCHAR
) 
RETURNS void as $$
BEGIN
    INSERT INTO "Ciudad" ("P_IdDepartamento", "Nombre")
    VALUES (P_IdDepartamento, P_Nombre);	
END;
$$ LANGUAGE plpgsql;