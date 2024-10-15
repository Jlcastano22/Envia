SELECT  jsonb_build_object
(
	'IdEmpresa', "E"."IdEmpresa",
	'RazonSocial', "E"."RazonSocial",
	'Nit', "E"."Nit",
	'Conmutador', "E"."Conmutador",
	'IdSede', "S"."IdSede",
	'NombreSede', "S"."Nombre",
	'Direccion', "S"."Direccion",
	'Barrio', "S"."Barrio",
	'IdEmpleado', "EM"."IdEmpleado",
	'Cargo', "EM"."Cargo",
	'Salario', "EM"."Salario",
	'Jornada', "EM"."Jornada"
) 
AS EmpresaSedeEmpleado
FROM "Empresa" AS "E"
	INNER JOIN "Sede" AS "S"
		ON "E"."IdEmpresa" = "S"."IdEmpresa"
	INNER JOIN "Empleado" AS "EM"
		ON "S"."IdSede" = "EM"."IdSede"
WHERE 
		"E"."Activo" = '1'
	AND
		"S"."Activo" = '1'
	AND
		"EM"."Activo" = '1';