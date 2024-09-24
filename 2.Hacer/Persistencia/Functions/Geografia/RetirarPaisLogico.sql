CREATE OR REPLACE FUNCTION FunctionRetirarPaisLogico(
    P_IdPais UUID
) 
RETURNS void as $$
BEGIN
    UPDATE "Pais" 
	SET "Activo" = '0',
		"Actualiza" = CURRENT_TIMESTAMP
	WHERE "IdPais" = P_IdPais
		AND "Activo" = '1';	
END;
$$ LANGUAGE plpgsql;