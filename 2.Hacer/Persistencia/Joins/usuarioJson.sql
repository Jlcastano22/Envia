SELECT jsonb_build_object
(
    'IdUsuario', "U"."IdUsuario",
    'NumeroDocumento', "U"."NumeroDocumento",
    'IdTipoDocumento', "TD"."IdTipoDocumento",
    'NombreTipoDocumento', "TD"."Nombre",
    'IdGenero', "G"."IdGenero",
    'NombreGenero', "G"."Nombre",
    'IdEstadoCivil', "EC"."IdEstadoCivil",
    'NombreEstadoCivil', "EC"."Nombre",
    'IdTipoUsuario', "TU"."IdTipoUsuario",
    'NombreTipoUsuario', "TU"."Nombre"
) 
AS UsuarioInfo
FROM "Usuario" AS "U"
    INNER JOIN "TipoDocumento" AS "TD"
        ON "U"."IdTipoDocumento" = "TD"."IdTipoDocumento"
    INNER JOIN "Genero" AS "G"
        ON "U"."IdGenero" = "G"."IdGenero"
    INNER JOIN "EstadoCivil" AS "EC"
        ON "U"."IdEstadoCivil" = "EC"."IdEstadoCivil"
    INNER JOIN "TipoUsuario" AS "TU"
        ON "U"."IdTipoUsuario" = "TU"."IdTipoUsuario"
WHERE 
    "U"."Activo" = '1'
    AND "TD"."Activo" = '1'
    AND "G"."Activo" = '1'
    AND "EC"."Activo" = '1'
    AND "TU"."Activo" = '1';
