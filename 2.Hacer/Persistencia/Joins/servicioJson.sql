SELECT jsonb_build_object
(
    'IdPaquete', "P"."IdPaquete",
    'Dimensiones', "P"."Dimensiones ",
    'Peso', "P"."Peso",
    'Descripcion', "P"."Descripcion",
    'IdTipoEnvio', "TE"."IdTipoEnvio",
    'NombreTipoEnvio', "TE"."Nombre",
    'IdTipoPaquete', "TP"."IdTipoPaquete",
    'NombreTipoPaquete', "TP"."Nombre"
) 
AS PaqueteInfo
FROM "Paquete" AS "P"
    INNER JOIN "TipoEnvio" AS "TE"
        ON "P"."IdTipoEnvio" = "TE"."IdTipoEnvio"
    INNER JOIN "TipoPaquete" AS "TP"
        ON "P"."IdTipoPaquete" = "TP"."IdTipoPaquete"
WHERE 
    "P"."Activo" = '1'
    AND "TE"."Activo" = '1'
    AND "TP"."Activo" = '1';