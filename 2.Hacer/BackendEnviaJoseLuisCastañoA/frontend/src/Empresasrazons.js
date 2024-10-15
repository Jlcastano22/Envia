// src/Empresas.js

import React, { useState } from 'react';

const Empresasrazons = () => {
  const [empresas, setEmpresas] = useState([]);
  const [loading, setLoading] = useState(true);
  const [empresaRazonSocial, setEmpresaRazonSocial] = useState('');

  const InputChange = (e) => {
    setEmpresaRazonSocial(e.target.value);
  };
  const fetchEmpresaByRazonSocial = () => {
    fetch(`http://localhost:8067/operaciongetempresarazonsocial/${empresaRazonSocial}`)
      .then((response) => response.json())
      .then((data) => {
        setEmpresas(data);
        setLoading(false);
      })
      .catch((error) => {
        console.error('Error al cargar datos:', error);
        setLoading(false);
      });
  };

  return (
    <div>
      <h2>Buscar empresas por razon social</h2>
      <input type='text' value={empresaRazonSocial} onChange={InputChange} placeholder='Ingrese el ID de la empresa' />
      <button onClick={fetchEmpresaByRazonSocial}>Buscar Empresa</button>
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

export default Empresasrazons;
