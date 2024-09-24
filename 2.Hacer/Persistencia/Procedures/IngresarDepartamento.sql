CREATE OR REPLACE PROCEDURE ProcedureIngresarDepartamento(
    P_IdPais UUID,
	P_Nombre VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "Departamento" ("IdPais", "Nombre")
    VALUES (P_IdPais, P_Nombre);
END;
$$;