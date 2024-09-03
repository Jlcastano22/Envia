CREATE TABLE "Pais" (
	"IdPais" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"Nombre" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdPais")
);

CREATE TABLE "Departamento" (
	"IdDepartamento" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"IdPais" UUID,
	"Nombre" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdDepartamento")
);


CREATE TABLE "Ciudad" (
	"IdCiudad" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"IdDepartamento" UUID,
	"Nombre" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdCiudad")
);


CREATE TABLE "Empresa" (
	"IdEmpresa" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"RazonSocial" VARCHAR,
	"Nit" VARCHAR,
	"Conmutador" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdEmpresa")
);


CREATE TABLE "Sede" (
	"IdSede" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"IdEmpresa" UUID,
	"Nombre" VARCHAR,
	"Direccion" VARCHAR,
	"Barrio" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdSede")
);

CREATE TABLE "Empleado" (
	"IdEmpleado" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"IdSede" UUID,
	"IdUsuario" UUID,
	"Cargo" VARCHAR,
	"Salario" VARCHAR,
	"Jornada" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdEmpleado")
);


CREATE TABLE "Genero" (
	"IdGenero" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"Nombre" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdGenero")
);


CREATE TABLE "TipoDocumento" (
	"IdTipoDocumento" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"Nombre" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdTipoDocumento")
);


CREATE TABLE "EstadoCivil" (
	"IdEstadoCivil" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"Nombre" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdEstadoCivil")
);


CREATE TABLE "TipoUsuario" (
	"IdTipoUsuario" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"Nombre" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdTipoUsuario")
);

CREATE TABLE "Usuario" (
	"IdUsuario" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"IdTipoDocumento" UUID,
	"NumeroDocumento" VARCHAR,
	"Nombre" varchar,
	"IdGenero" UUID,
	"IdEstadoCivil" UUID,
	"IdTipoUsuario" UUID,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdUsuario")
);


CREATE TABLE "TipoEnvio" (
	"IdTipoEnvio" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"Nombre" VARCHAR,
	"Caracteristicas" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdTipoEnvio")
);


CREATE TABLE "TipoPaquete" (
	"IdTipoPaquete" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"Nombre" VARCHAR,
	"Caracteristicas" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdTipoPaquete")
);


CREATE TABLE "Paquete" (
	"IdPaquete" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"IdTipoEnvio" UUID,
	"IdTipoPaquete" UUID,
	"Dimensiones " VARCHAR,
	"Peso" VARCHAR,
	"Descripcion" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdPaquete")
);


CREATE TABLE "DetalleEnvio" (
	"IdDetalleEnvio" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"IdPaquete" UUID,
	"DireccionRemitente" VARCHAR,
	"DireccionDestinatario" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdDetalleEnvio")
);


CREATE TABLE "EstadoEnvio" (
	"IdEstadoEnvio" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"Nombre" VARCHAR,
	"Encargado" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdEstadoEnvio")
);


CREATE TABLE "ReciboDeEntrega" (
	"IdReciboDeEntrega" UUID NOT NULL unique DEFAULT uuid_generate_v4(),
	"IdCiudad" UUID,
	"IdEmpleado" UUID,
	"IdUsuario" UUID,
	"IdDetalleEnvio" UUID,
	"IdEstadoEnvio" UUID,
	"Total" VARCHAR,
	"Activo" bit DEFAULT '1',
	"Actualiza" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("IdReciboDeEntrega")
);

ALTER TABLE "Departamento" 
ADD CONSTRAINT IdPais_fk FOREIGN KEY ("IdPais") 
REFERENCES "Pais"("IdPais");

ALTER TABLE "Ciudad" 
add CONSTRAINT idDepartamento_fk FOREIGN key ("IdDepartamento") 
REFERENCES "Departamento"("IdDepartamento")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "Sede"
ADD FOREIGN KEY("IdEmpresa") REFERENCES "Empresa"("IdEmpresa")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "Empleado"
ADD FOREIGN KEY("IdSede") REFERENCES "Sede"("IdSede")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "Empleado"
ADD FOREIGN KEY("IdUsuario") REFERENCES "Usuario"("IdUsuario")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "Usuario"
ADD FOREIGN KEY("IdTipoDocumento") REFERENCES "TipoDocumento"("IdTipoDocumento")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "Usuario"
ADD FOREIGN KEY("IdGenero") REFERENCES "Genero"("IdGenero")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "Usuario"
ADD FOREIGN KEY("IdEstadoCivil") REFERENCES "EstadoCivil"("IdEstadoCivil")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "Usuario"
ADD FOREIGN KEY("IdEstadoCivil") REFERENCES "EstadoCivil"("IdEstadoCivil")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "Usuario"
ADD FOREIGN KEY("IdTipoUsuario") REFERENCES "TipoUsuario"("IdTipoUsuario")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "Paquete"
ADD FOREIGN KEY("IdTipoEnvio") REFERENCES "TipoEnvio"("IdTipoEnvio")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "Paquete"
ADD FOREIGN KEY("IdTipoPaquete") REFERENCES "TipoPaquete"("IdTipoPaquete")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "DetalleEnvio"
ADD FOREIGN KEY("IdPaquete") REFERENCES "Paquete"("IdPaquete")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "ReciboDeEntrega"
ADD FOREIGN KEY("IdCiudad") REFERENCES "Ciudad"("IdCiudad")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "ReciboDeEntrega"
ADD FOREIGN KEY("IdEmpleado") REFERENCES "Empleado"("IdEmpleado")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "ReciboDeEntrega"
ADD FOREIGN KEY("IdUsuario") REFERENCES "Usuario"("IdUsuario")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "ReciboDeEntrega"
ADD FOREIGN KEY("IdDetalleEnvio") REFERENCES "DetalleEnvio"("IdDetalleEnvio")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "ReciboDeEntrega"
ADD FOREIGN KEY("IdEstadoEnvio") REFERENCES "EstadoEnvio"("IdEstadoEnvio")
ON UPDATE NO ACTION ON DELETE NO ACTION;