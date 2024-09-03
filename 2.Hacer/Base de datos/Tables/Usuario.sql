-- "Envia"."Usuario" definition

-- Drop table

-- DROP TABLE "Envia"."Usuario";

CREATE TABLE "Envia"."Usuario" (
	"IdUsuario" uuid NOT NULL,
	"IdTipoDocumento" uuid NULL,
	"NumeroDocumento" varchar NULL,
	"IdGenero" uuid NULL,
	"IdEstadoCivil" uuid NULL,
	"IdTipoUsuario" uuid NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	nombre varchar NULL,
	CONSTRAINT "Usuario_pkey" PRIMARY KEY ("IdUsuario")
);


-- "Envia"."Usuario" foreign keys

ALTER TABLE "Envia"."Usuario" ADD CONSTRAINT "Usuario_IdEstadoCivil_fkey" FOREIGN KEY ("IdEstadoCivil") REFERENCES "Envia"."EstadoCivil"("IdEstadoCivil");
ALTER TABLE "Envia"."Usuario" ADD CONSTRAINT "Usuario_IdEstadoCivil_fkey1" FOREIGN KEY ("IdEstadoCivil") REFERENCES "Envia"."EstadoCivil"("IdEstadoCivil");
ALTER TABLE "Envia"."Usuario" ADD CONSTRAINT "Usuario_IdGenero_fkey" FOREIGN KEY ("IdGenero") REFERENCES "Envia"."Genero"("IdGenero");
ALTER TABLE "Envia"."Usuario" ADD CONSTRAINT "Usuario_IdTipoDocumento_fkey" FOREIGN KEY ("IdTipoDocumento") REFERENCES "Envia"."TipoDocumento"("IdTipoDocumento");
ALTER TABLE "Envia"."Usuario" ADD CONSTRAINT "Usuario_IdTipoUsuario_fkey" FOREIGN KEY ("IdTipoUsuario") REFERENCES "Envia"."TipoUsuario"("IdTipoUsuario");