CREATE OR REPLACE FUNCTION FunctionModificarEmpleado(
    P_IdEmpleado UUID,
    P_Cargo VARCHAR,
    P_Salario VARCHAR,
    P_Jornada VARCHAR
) 
RETURNS void AS $$
BEGIN
    UPDATE "Empleado"
    SET "Cargo" = P_Cargo,
        "Salario" = P_Salario,
        "Jornada" = P_Jornada,
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdEmpleado" = P_IdEmpleado
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;