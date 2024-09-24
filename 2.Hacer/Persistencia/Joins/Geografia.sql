select 
"P"."IdPais" AS "IdPais",
"P"."Nombre" AS "NombrePais",
"D"."IdDepartamento" AS "IdDepartamento",
"D"."Nombre" AS "NombreDepartamento",	
"C"."IdCiudad" AS "IdCiudad",
"C"."Nombre" AS "NombreCiudad"	
from "Pais" as "P"
	inner join "Departamento" as "D" 
		ON "P"."IdPais" ="D"."IdPais" 
	inner join "Ciudad" as "C"
		on "D"."IdDepartamento" = "C"."IdDepartamento"
where
	"P"."Activo" = '1'
	and 
	"D"."Activo" = '1'
	and 
	"C"."Activo" = '1'