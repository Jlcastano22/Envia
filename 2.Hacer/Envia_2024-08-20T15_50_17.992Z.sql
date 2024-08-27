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
	"Conmutador" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdEmpresa")
);


CREATE TABLE "Sede" (
	"idSede" UUID NOT NULL UNIQUE,
	"IdEmpresa" UUID,
	"Nombre" VARCHAR,
	"Direccion" VARCHAR,
	"Barrio" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("idSede")
);


CREATE TABLE "Empleado" (
	"IdEmpleado" UUID NOT NULL UNIQUE,
	"IdSede" UUID,
	"IdUsuario" UUID,
	"Cargo" VARCHAR,
	"Salario" VARCHAR,
	"Jornada" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdEmpleado")
);


CREATE TABLE "Genero" (
	"IdGenero" UUID NOT NULL UNIQUE,
	"Nombre" VARCHAR,
	PRIMARY KEY("IdGenero")
);


CREATE TABLE "TipoDocumento" (
	"IdTipoDocumento" UUID NOT NULL UNIQUE,
	"Nombre" VARCHAR,
	PRIMARY KEY("IdTipoDocumento")
);


CREATE TABLE "EstadoCivil" (
	"IdEstadoCivil" UUID NOT NULL UNIQUE,
	"Nombre" VARCHAR,
	PRIMARY KEY("IdEstadoCivil")
);


CREATE TABLE "TipoUsuario" (
	"IdTipoUsuario" INTEGER NOT NULL UNIQUE,
	"Nombre" VARCHAR,
	PRIMARY KEY("IdTipoUsuario")
);


CREATE TABLE "Usuario" (
	"IdUsuario" UUID NOT NULL UNIQUE,
	"IdTipoDocumento" UUID,
	"NumeroDocumento" VARCHAR,
	"IdGenero" UUID,
	"IdEstadoCivil" UUID,
	"IdTipoUsuario" UUID,
	PRIMARY KEY("IdUsuario")
);


ALTER TABLE "Pais"
ADD FOREIGN KEY("IdPais") REFERENCES "Departamento"("IdPais")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "Departamento"
ADD FOREIGN KEY("IdDepartamento") REFERENCES "Ciudad"("IdDepartamento")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "Empresa"
ADD FOREIGN KEY("IdEmpresa") REFERENCES "Sede"("IdEmpresa")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "Sede"
ADD FOREIGN KEY("idSede") REFERENCES "Empleado"("IdSede")
ON UPDATE NO ACTION ON DELETE NO ACTION;