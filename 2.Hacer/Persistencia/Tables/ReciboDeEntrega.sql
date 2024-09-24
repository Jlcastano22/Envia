-- "Envia"."ReciboDeEntrega" definition

-- Drop table

-- DROP TABLE "Envia"."ReciboDeEntrega";

CREATE TABLE "Envia"."ReciboDeEntrega" (
	"IdReciboDeEntrega" uuid NOT NULL,
	"IdCiudad" uuid NULL,
	"IdEmpleado" uuid NULL,
	"IdUsuario" uuid NULL,
	"IdDetalleEnvio" uuid NULL,
	"IdEstadoEnvio" uuid NULL,
	"Total" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "ReciboDeEntrega_pkey" PRIMARY KEY ("IdReciboDeEntrega")
);


-- "Envia"."ReciboDeEntrega" foreign keys

ALTER TABLE "Envia"."ReciboDeEntrega" ADD CONSTRAINT "ReciboDeEntrega_IdCiudad_fkey" FOREIGN KEY ("IdCiudad") REFERENCES "Envia"."Ciudad"("IdCiudad");
ALTER TABLE "Envia"."ReciboDeEntrega" ADD CONSTRAINT "ReciboDeEntrega_IdDetalleEnvio_fkey" FOREIGN KEY ("IdDetalleEnvio") REFERENCES "Envia"."DetalleEnvio"("IdDetalleEnvio");
ALTER TABLE "Envia"."ReciboDeEntrega" ADD CONSTRAINT "ReciboDeEntrega_IdEmpleado_fkey" FOREIGN KEY ("IdEmpleado") REFERENCES "Envia"."Empleado"("IdEmpleado");
ALTER TABLE "Envia"."ReciboDeEntrega" ADD CONSTRAINT "ReciboDeEntrega_IdEstadoEnvio_fkey" FOREIGN KEY ("IdEstadoEnvio") REFERENCES "Envia"."EstadoEnvio"("IdEstadoEnvio");
ALTER TABLE "Envia"."ReciboDeEntrega" ADD CONSTRAINT "ReciboDeEntrega_IdUsuario_fkey" FOREIGN KEY ("IdUsuario") REFERENCES "Envia"."Usuario"("IdUsuario");