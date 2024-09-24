CREATE OR REPLACE FUNCTION FunctionModificarUsuario(
    P_IdUsuario UUID,
    P_IdTipoDocumento UUID,
    P_NumeroDocumento VARCHAR,
    P_Nombre VARCHAR,
    P_IdGenero UUID,
    P_IdEstadoCivil UUID,
    P_IdTipoUsuario UUID
) 
RETURNS void AS $$
BEGIN
    UPDATE "Usuario"
    SET "IdTipoDocumento" = P_IdTipoDocumento,
        "NumeroDocumento" = P_NumeroDocumento,
        "Nombre" = P_Nombre,
        "IdGenero" = P_IdGenero,
        "IdEstadoCivil" = P_IdEstadoCivil,
        "IdTipoUsuario" = P_IdTipoUsuario,
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdUsuario" = P_IdUsuario
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;