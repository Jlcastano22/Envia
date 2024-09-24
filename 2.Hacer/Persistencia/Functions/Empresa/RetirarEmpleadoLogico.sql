CREATE OR REPLACE FUNCTION FunctionRetirarEmpleadoLogico(
    P_IdEmpleado UUID
) 
RETURNS void AS $$
BEGIN
    UPDATE "Empleado"
    SET "Activo" = '0',
        "Actualiza" = CURRENT_TIMESTAMP
    WHERE "IdEmpleado" = P_IdEmpleado
      AND "Activo" = '1';
END;
$$ LANGUAGE plpgsql;