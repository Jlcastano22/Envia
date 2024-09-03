
-- "Envia"."Genero" definition

-- Drop table

-- DROP TABLE "Envia"."Genero";

CREATE TABLE "Envia"."Genero" (
	"IdGenero" uuid NOT NULL,
	"Nombre" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "Genero_pkey" PRIMARY KEY ("IdGenero")
);