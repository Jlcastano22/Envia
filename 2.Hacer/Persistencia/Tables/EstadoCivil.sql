-- "Envia"."EstadoCivil" definition

-- Drop table

-- DROP TABLE "Envia"."EstadoCivil";

CREATE TABLE "Envia"."EstadoCivil" (
	"IdEstadoCivil" uuid NOT NULL,
	"Nombre" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "EstadoCivil_pkey" PRIMARY KEY ("IdEstadoCivil")
);