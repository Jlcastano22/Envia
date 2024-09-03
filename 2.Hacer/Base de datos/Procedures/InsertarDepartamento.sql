CREATE OR REPLACE FUNCTION insertardepartamento(nombrepais character varying, nombredepartamento character varying)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
DECLARE
   VIdPais UUID;
	VNombreDepartamento varchar;
BEGIN
    SELECT "IdPais" INTO VIdPais FROM "Pais" WHERE "Nombre" = NombrePais and "Activo"='1';
	SELECT "Nombre" INTO VNombreDepartamento FROM "Departamento" WHERE "Nombre" = NombreDepartamento and "Activo"='1';

    IF VIdPais IS NULL THEN
        RAISE EXCEPTION 'País % no encontrado', NombrePais;
    END IF;

	IF NombreDepartamento=VNombreDepartamento   THEN
        RAISE EXCEPTION 'Departamento % ya registrado', NombreDepartamento;
    END IF;

    INSERT INTO "Departamento" ("Nombre", "IdPais")
    VALUES (NombreDepartamento, VIdPais);
END;
$function$
;
