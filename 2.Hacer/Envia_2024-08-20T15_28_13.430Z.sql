CREATE TABLE "Pais" (
	"IdPais" UUID NOT NULL UNIQUE,
	"Nombre" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdPais")
);


CREATE TABLE "Departamento" (
	"IdDepartamento" UUID NOT NULL UNIQUE,
	"IdPais" UUID,
	"Nombre" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdDepartamento")
);


CREATE TABLE "Ciudad" (
	"IdCiudad" UUID NOT NULL UNIQUE,
	"IdDepartamento" UUID,
	"Nombre" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdCiudad")
);


CREATE TABLE "Empresa" (
	"IdEmpresa" UUID NOT NULL UNIQUE,
	"RazonSocial" VARCHAR,
	"Nit" VARCHAR,
	"Direccion" VARCHAR,
	"Conmutador" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdEmpresa")
);


ALTER TABLE "Pais"
ADD FOREIGN KEY("IdPais") REFERENCES "Departamento"("IdPais")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "Departamento"
ADD FOREIGN KEY("IdDepartamento") REFERENCES "Ciudad"("IdDepartamento")
ON UPDATE NO ACTION ON DELETE NO ACTION;