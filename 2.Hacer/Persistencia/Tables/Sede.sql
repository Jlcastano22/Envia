-- "Envia"."Sede" definition

-- Drop table

-- DROP TABLE "Envia"."Sede";

CREATE TABLE "Envia"."Sede" (
	"IdSede" uuid NOT NULL,
	"IdEmpresa" uuid NULL,
	"Nombre" varchar NULL,
	"Direccion" varchar NULL,
	"Barrio" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "Sede_pkey" PRIMARY KEY ("IdSede")
);


-- "Envia"."Sede" foreign keys

ALTER TABLE "Envia"."Sede" ADD CONSTRAINT "Sede_IdEmpresa_fkey" FOREIGN KEY ("IdEmpresa") REFERENCES "Envia"."Empresa"("IdEmpresa");