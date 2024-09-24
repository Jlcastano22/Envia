-- "Envia"."Ciudad" definition

-- Drop table

-- DROP TABLE "Envia"."Ciudad";

CREATE TABLE "Envia"."Ciudad" (
	"IdCiudad" uuid NOT NULL,
	"IdDepartamento" uuid NULL,
	"Nombre" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "Ciudad_pkey" PRIMARY KEY ("IdCiudad")
);


-- "Envia"."Ciudad" foreign keys

ALTER TABLE "Envia"."Ciudad" ADD CONSTRAINT iddepartamento_fk FOREIGN KEY ("IdDepartamento") REFERENCES "Envia"."Departamento"("IdDepartamento");