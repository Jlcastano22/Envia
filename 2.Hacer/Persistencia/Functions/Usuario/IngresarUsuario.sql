CREATE OR REPLACE FUNCTION FunctionIngresarUsuario(
    P_IdTipoDocumento UUID,
    P_NumeroDocumento VARCHAR,
    P_Nombre VARCHAR,
    P_IdGenero UUID,
    P_IdEstadoCivil UUID,
    P_IdTipoUsuario UUID
) 
RETURNS void AS $$
BEGIN
    INSERT INTO "Usuario" (
        "IdTipoDocumento", "NumeroDocumento", "Nombre", 
        "IdGenero", "IdEstadoCivil", "IdTipoUsuario"
    )
    VALUES (
        P_IdTipoDocumento, P_NumeroDocumento, P_Nombre, 
        P_IdGenero, P_IdEstadoCivil, P_IdTipoUsuario
    );
END;
$$ LANGUAGE plpgsql;