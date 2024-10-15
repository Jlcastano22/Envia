import React from 'react';
import './App.css';
import Empresas from './Empresas';
import Empresasid from './EmpresasId';
import Empresasrazons from './Empresasrazons';

function App() {
  return (
    <div className='App'>
      <header className='App-header'>
        <h1>Consulta de Empresas</h1>
        <Empresas />
        <Empresasid />
        <Empresasrazons />
      </header>
    </div>
  );
}

export default App;
