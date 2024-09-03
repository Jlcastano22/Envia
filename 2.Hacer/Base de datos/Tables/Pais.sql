-- "Envia"."Pais" definition

-- Drop table

-- DROP TABLE "Envia"."Pais";

CREATE TABLE "Envia"."Pais" (
	"IdPais" uuid NOT NULL,
	"Nombre" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "Pais_pkey" PRIMARY KEY ("IdPais")
);