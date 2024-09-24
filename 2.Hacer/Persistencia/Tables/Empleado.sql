-- "Envia"."Empleado" definition

-- Drop table

-- DROP TABLE "Envia"."Empleado";

CREATE TABLE "Envia"."Empleado" (
	"IdEmpleado" uuid NOT NULL,
	"IdSede" uuid NULL,
	"IdUsuario" uuid NULL,
	"Cargo" varchar NULL,
	"Salario" varchar NULL,
	"Jornada" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "Empleado_pkey" PRIMARY KEY ("IdEmpleado")
);


-- "Envia"."Empleado" foreign keys

ALTER TABLE "Envia"."Empleado" ADD CONSTRAINT "Empleado_IdSede_fkey" FOREIGN KEY ("IdSede") REFERENCES "Envia"."Sede"("IdSede");
ALTER TABLE "Envia"."Empleado" ADD CONSTRAINT "Empleado_IdUsuario_fkey" FOREIGN KEY ("IdUsuario") REFERENCES "Envia"."Usuario"("IdUsuario");