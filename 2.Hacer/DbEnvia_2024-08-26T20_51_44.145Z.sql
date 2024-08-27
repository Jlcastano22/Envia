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
	"IdSede" UUID NOT NULL UNIQUE,
	"IdEmpresa" UUID,
	"Nombre" VARCHAR,
	"Direccion" VARCHAR,
	"Barrio" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdSede")
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
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdGenero")
);


CREATE TABLE "TipoDocumento" (
	"IdTipoDocumento" UUID NOT NULL UNIQUE,
	"Nombre" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdTipoDocumento")
);


CREATE TABLE "EstadoCivil" (
	"IdEstadoCivil" UUID NOT NULL UNIQUE,
	"Nombre" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdEstadoCivil")
);


CREATE TABLE "TipoUsuario" (
	"IdTipoUsuario" UUID NOT NULL UNIQUE,
	"Nombre" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdTipoUsuario")
);


CREATE TABLE "Usuario" (
	"IdUsuario" UUID NOT NULL UNIQUE,
	"IdTipoDocumento" UUID,
	"NumeroDocumento" VARCHAR,
	"IdGenero" UUID,
	"IdEstadoCivil" UUID,
	"IdTipoUsuario" UUID,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdUsuario")
);


CREATE TABLE "TipoEnvio" (
	"IdTipoEnvio" UUID NOT NULL UNIQUE,
	"Nombre" VARCHAR,
	"Caracteristicas" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdTipoEnvio")
);


CREATE TABLE "TipoPaquete" (
	"IdTipoPaquete" UUID NOT NULL UNIQUE,
	"Nombre" VARCHAR,
	"Caracteristicas" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdTipoPaquete")
);


CREATE TABLE "Paquete" (
	"IdPaquete" UUID NOT NULL UNIQUE,
	"IdTipoEnvio" UUID,
	"IdTipoPaquete" UUID,
	"Dimensiones " VARCHAR,
	"Descripcion" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdPaquete")
);


CREATE TABLE "DetalleEnvio" (
	"IdDetalleEnvio" UUID NOT NULL UNIQUE,
	"IdPaquete" UUID,
	"DireccionRemitente" VARCHAR,
	"DireccionDestinatario" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdDetalleEnvio")
);


CREATE TABLE "EstadoEnvio" (
	"IdEstadoEnvio" UUID NOT NULL UNIQUE,
	"Nombre" VARCHAR,
	"Encargado" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdEstadoEnvio")
);


CREATE TABLE "ReciboDeEntrega" (
	"IdReciboDeEntrega" UUID NOT NULL UNIQUE,
	"IdCiudad" UUID,
	"IdEmpleado" UUID,
	"IdUsuario" UUID,
	"IdDetalleEnvio" UUID,
	"IdEstadoEnvio" UUID,
	"Total" VARCHAR,
	"Activo" BIT,
	"Actualiza" TIMESTAMP,
	PRIMARY KEY("IdReciboDeEntrega")
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
ADD FOREIGN KEY("IdSede") REFERENCES "Empleado"("IdSede")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "Genero"
ADD FOREIGN KEY("IdGenero") REFERENCES "Usuario"("IdGenero")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "TipoDocumento"
ADD FOREIGN KEY("IdTipoDocumento") REFERENCES "Usuario"("IdTipoDocumento")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "EstadoCivil"
ADD FOREIGN KEY("IdEstadoCivil") REFERENCES "Usuario"("IdEstadoCivil")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "TipoUsuario"
ADD FOREIGN KEY("IdTipoUsuario") REFERENCES "Usuario"("IdTipoUsuario")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "TipoEnvio"
ADD FOREIGN KEY("IdTipoEnvio") REFERENCES "Paquete"("IdTipoEnvio")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "TipoPaquete"
ADD FOREIGN KEY("IdTipoPaquete") REFERENCES "Paquete"("IdTipoPaquete")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "Paquete"
ADD FOREIGN KEY("IdPaquete") REFERENCES "DetalleEnvio"("IdPaquete")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "Usuario"
ADD FOREIGN KEY("IdUsuario") REFERENCES "Empleado"("IdUsuario")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "Ciudad"
ADD FOREIGN KEY("IdCiudad") REFERENCES "ReciboDeEntrega"("IdCiudad")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "Empleado"
ADD FOREIGN KEY("IdEmpleado") REFERENCES "ReciboDeEntrega"("IdEmpleado")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "Usuario"
ADD FOREIGN KEY("IdUsuario") REFERENCES "ReciboDeEntrega"("IdUsuario")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "DetalleEnvio"
ADD FOREIGN KEY("IdDetalleEnvio") REFERENCES "ReciboDeEntrega"("IdDetalleEnvio")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "EstadoEnvio"
ADD FOREIGN KEY("IdEstadoEnvio") REFERENCES "ReciboDeEntrega"("IdEstadoEnvio")
ON UPDATE NO ACTION ON DELETE NO ACTION;