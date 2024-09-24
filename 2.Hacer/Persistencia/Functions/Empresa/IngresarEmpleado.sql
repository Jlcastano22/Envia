CREATE OR REPLACE FUNCTION FunctionIngresarEmpleado(
    P_IdSede UUID,
    P_IdUsuario UUID,
    P_Cargo VARCHAR,
    P_Salario VARCHAR,
    P_Jornada VARCHAR
) 
RETURNS void AS $$
BEGIN
    INSERT INTO "Empleado" ("IdSede", "IdUsuario", "Cargo", "Salario", "Jornada")
    VALUES (P_IdSede, P_IdUsuario, P_Cargo, P_Salario, P_Jornada);
END;
$$ LANGUAGE plpgsql;