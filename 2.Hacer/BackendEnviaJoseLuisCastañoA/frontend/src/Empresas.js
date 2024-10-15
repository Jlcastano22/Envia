// src/Empresas.js

import React, { useEffect, useState } from 'react';

const Empresas = () => {
  const [empresas, setEmpresas] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetch('http://localhost:8067/operaciongetempresa')
      .then((response) => response.json())
      .then((data) => {
        setEmpresas(data);
        setLoading(false);
      })
      .catch((error) => {
        console.error('Error al cargar datos:', error);
        setLoading(false);
      });
  }, []);

  if (loading) return <p>Cargando datos...</p>;

  return (
    <div>
      <h2>Empresas</h2>
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>ID Empresa</th>
            <th>Nit</th>
            <th>Razon Social</th>
            <th>ID Sede</th>
            <th>Nombre Sede</th>
            <th>Direccion Sede</th>
            <th>ID Empleado</th>
            <th>Cargo Empleado</th>
          </tr>
        </thead>
        <tbody>
          {empresas.map((empresa) => (
            <tr key={empresa._id}>
              <td>{empresa._id}</td>
              <td>{empresa.IdEmpresa}</td>
              <td>{empresa.Nit}</td>
              <td>{empresa.RazonSocial}</td>
              <td>{empresa.IdSede}</td>
              <td>{empresa.NombreSede}</td>
              <td>{empresa.Direccion}</td>
              <td>{empresa.IdEmpleado}</td>
              <td>{empresa.Cargo}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default Empresas;
