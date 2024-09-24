CREATE OR REPLACE FUNCTION FunctionModificarPais(
    P_IdPais UUID,
	P_Nombre VARCHAR
) 
RETURNS void as $$
BEGIN
    UPDATE "Pais" 
	SET "Nombre" = P_Nombre,
		"Actualiza" = CURRENT_TIMESTAMP
	WHERE "IdPais" = P_IdPais
		AND "Activo" = '1';	
END;
$$ LANGUAGE plpgsql;