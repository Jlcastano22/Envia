-- "Envia"."TipoPaquete" definition

-- Drop table

-- DROP TABLE "Envia"."TipoPaquete";

CREATE TABLE "Envia"."TipoPaquete" (
	"IdTipoPaquete" uuid NOT NULL,
	"Nombre" varchar NULL,
	"Caracteristicas" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "TipoPaquete_pkey" PRIMARY KEY ("IdTipoPaquete")
);