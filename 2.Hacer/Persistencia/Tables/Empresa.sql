-- "Envia"."Empresa" definition

-- Drop table

-- DROP TABLE "Envia"."Empresa";

CREATE TABLE "Envia"."Empresa" (
	"IdEmpresa" uuid NOT NULL,
	"RazonSocial" varchar NULL,
	"Nit" varchar NULL,
	"Conmutador" varchar NULL,
	"Activo" bit(1) DEFAULT '1'::"bit" NULL,
	"Actualiza" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT "Empresa_pkey" PRIMARY KEY ("IdEmpresa")
);