-- "Envia"."TipoEnvio" definition

-- Drop table

-- DROP TABLE "Envia"."TipoEnvio";

CREATE TABLE "Envia"."TipoEnvio" (
	"IdTipoEnvio" uuid NOT NULL,
	"Nombre" varchar NULL,
	"Caracteristicas" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "TipoEnvio_pkey" PRIMARY KEY ("IdTipoEnvio")
);