CREATE OR REPLACE FUNCTION "Envia".insertarciudad(nombredepartamento character varying, nombreciudad character varying)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
DECLARE
    VIdDepartamento UUID;
	VNombreCiudad varchar;
BEGIN
    SELECT "IdDepartamento" INTO VIdDepartamento FROM "Departamento" WHERE "Nombre" = NombreDepartamento and "Activo"='1';
	SELECT "Nombre" INTO VNombreCiudad FROM "Ciudad" WHERE "Nombre" = NombreCiudad and "Activo"='1';

    IF VIdDepartamento IS NULL THEN
        RAISE EXCEPTION 'Departamento % no encontrado', NombreDepartamento;
    END IF;

	IF NombreCiudad=VNombreCiudad   THEN
        RAISE EXCEPTION 'Ciuadad % ya registrada', NombreCiudad;
    END IF;

    INSERT INTO "Ciudad" ("Nombre", "IdDepartamento")
    VALUES (NombreCiudad, VIdDepartamento);
END;
$function$
;
