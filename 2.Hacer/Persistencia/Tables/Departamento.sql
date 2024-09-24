-- "Envia"."Departamento" definition

-- Drop table

-- DROP TABLE "Envia"."Departamento";

CREATE TABLE "Envia"."Departamento" (
	"IdDepartamento" uuid NOT NULL,
	"IdPais" uuid NULL,
	"Nombre" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "Departamento_pkey" PRIMARY KEY ("IdDepartamento")
);


-- "Envia"."Departamento" foreign keys

ALTER TABLE "Envia"."Departamento" ADD CONSTRAINT idpais_fk FOREIGN KEY ("IdPais") REFERENCES "Envia"."Pais"("IdPais");