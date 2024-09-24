CREATE OR REPLACE FUNCTION FunctionConsultarPais(
)
RETURNS TABLE(IdPais UUID, Nombre VARCHAR, Activo BIT, Actualiza TIMESTAMP)
LANGUAGE plpgsql
AS $$
BEGIN
 RETURN QUERY
 
	SELECT "IdPais" AS IdPais,
			"Nombre" AS Nombre,
			"Activo" AS Activo,
			"Actualiza" AS Actualiza
	FROM "Pais"
	WHERE "Activo" = '1';	 

END; 
$$