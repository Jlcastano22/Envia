-- "Envia"."Paquete" definition

-- Drop table

-- DROP TABLE "Envia"."Paquete";

CREATE TABLE "Envia"."Paquete" (
	"IdPaquete" uuid NOT NULL,
	"IdTipoEnvio" uuid NULL,
	"IdTipoPaquete" uuid NULL,
	"Dimensiones " varchar NULL,
	"Peso" varchar NULL,
	"Descripcion" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "Paquete_pkey" PRIMARY KEY ("IdPaquete")
);


-- "Envia"."Paquete" foreign keys

ALTER TABLE "Envia"."Paquete" ADD CONSTRAINT "Paquete_IdTipoEnvio_fkey" FOREIGN KEY ("IdTipoEnvio") REFERENCES "Envia"."TipoEnvio"("IdTipoEnvio");
ALTER TABLE "Envia"."Paquete" ADD CONSTRAINT "Paquete_IdTipoPaquete_fkey" FOREIGN KEY ("IdTipoPaquete") REFERENCES "Envia"."TipoPaquete"("IdTipoPaquete");