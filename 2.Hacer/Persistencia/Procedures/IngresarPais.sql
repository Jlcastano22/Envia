CREATE OR REPLACE PROCEDURE ProcedureIngresarPais(
    P_Nombre VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "Pais"("Nombre")
    VALUES(P_Nombre);
END;
$$;

CALL "procedureingresarpais"('Panama');