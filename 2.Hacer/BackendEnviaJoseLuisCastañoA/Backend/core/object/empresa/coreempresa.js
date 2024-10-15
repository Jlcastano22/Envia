// coreempresa.js

const { ModelEmpresa, modelempresa } = require('../../../domain/object/empresa/modelempresa');
const { InfrastructureEmpresa } = require('../../../infrastructure/object/empresa/infrastructureempresa');

class CoreEmpresa {
  constructor() {}
  // async consultarempresa(respuesta){
  // const infrastructureempresa = new InfrastructureEmpresa();
  // try {
  // return infrastructureempresa.consultarempresa(respuesta);
  // } catch (e) {
  // console.error(e);
  // }
  // }
  async consultarempresa() {
    const infrastructureempresa = new InfrastructureEmpresa();
    try {
      return await infrastructureempresa.consultarempresa();
    } catch (err) {
      console.error(err.message);
    }
  }

  async consultarempresaid(id) {
    const infrastructureempresa = new InfrastructureEmpresa();
    try {
      return await infrastructureempresa.consultarempresaid(id);
    } catch (err) {
      console.error(err.message);
    }
  }

  async consultarempresarazonsocial(razonsocial) {
    const infrastructureempresa = new InfrastructureEmpresa();
    try {
      return await infrastructureempresa.consultarempresarazonsocial(razonsocial);
    } catch (err) {
      console.error(err.message);
    }
  }
}

module.exports = { CoreEmpresa };
