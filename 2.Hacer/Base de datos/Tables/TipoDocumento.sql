-- "Envia"."TipoDocumento" definition

-- Drop table

-- DROP TABLE "Envia"."TipoDocumento";

CREATE TABLE "Envia"."TipoDocumento" (
	"IdTipoDocumento" uuid NOT NULL,
	"Nombre" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "TipoDocumento_pkey" PRIMARY KEY ("IdTipoDocumento")
);