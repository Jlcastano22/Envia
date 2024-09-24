CREATE OR REPLACE PROCEDURE ProcedureIngresarCiudad(
    P_IdDepartamento UUID,
	P_Nombre VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "Ciudad" ("P_IdDepartamento", "Nombre")
    VALUES (P_IdDepartamento, P_Nombre);	
END;
$$;