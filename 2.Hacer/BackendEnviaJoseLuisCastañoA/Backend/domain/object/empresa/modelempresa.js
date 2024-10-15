// domain/object/empresa/modelempresa.js

// const modelempresa = [];

class ModelEmpresa {
  constructor(idempresa, razonsocial, nit, idsede, nombresede, direccionsede, idempleado, jornada, salario) {
    this.idempresa = idempresa;
    this.razonsocial = razonsocial;
    this.nit = nit;
    this.idsede = idsede;
    this.nombresede = nombresede;
    this.direccionsede = direccionsede;
    this.idempleado = idempleado;
    this.jornada = jornada;
    this.salario = salario;
  }
}

module.exports = { ModelEmpresa };
// module.exports = {ModelEmpresa, modelempresa};
