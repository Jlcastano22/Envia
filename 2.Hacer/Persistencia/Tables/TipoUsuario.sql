-- "Envia"."TipoUsuario" definition

-- Drop table

-- DROP TABLE "Envia"."TipoUsuario";

CREATE TABLE "Envia"."TipoUsuario" (
	"IdTipoUsuario" uuid NOT NULL,
	"Nombre" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "TipoUsuario_pkey" PRIMARY KEY ("IdTipoUsuario")
);