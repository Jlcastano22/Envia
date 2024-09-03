-- "Envia"."DetalleEnvio" definition

-- Drop table

-- DROP TABLE "Envia"."DetalleEnvio";

CREATE TABLE "Envia"."DetalleEnvio" (
	"IdDetalleEnvio" uuid NOT NULL,
	"IdPaquete" uuid NULL,
	"DireccionRemitente" varchar NULL,
	"DireccionDestinatario" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "DetalleEnvio_pkey" PRIMARY KEY ("IdDetalleEnvio")
);


-- "Envia"."DetalleEnvio" foreign keys

ALTER TABLE "Envia"."DetalleEnvio" ADD CONSTRAINT "DetalleEnvio_IdPaquete_fkey" FOREIGN KEY ("IdPaquete") REFERENCES "Envia"."Paquete"("IdPaquete");