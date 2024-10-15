// index.js

const express = require('express');
const bodyParser = require('body-parser');
const swaggerUi = require('swagger-ui-express');
const cors = require('cors');
const swaggerSpecificationEmpresa = require('./swagger/object/empresa/swaggerspecificationempresa');
const empresaApi = require('./application/object/empresa/apiempresa');

var app = express();

app.use(cors());

app.use(bodyParser.json());

app.use('/api-doc', swaggerUi.serve, swaggerUi.setup(swaggerSpecificationEmpresa));

app.use(empresaApi);

const PORT = process.env.PORT || 8067;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
  console.log(`Swagger docs available at http://localhost:${PORT}/api-doc`);
  console.log(`Get operation available at http://localhost:${PORT}/operacionempresa`);
  console.log(`Get operation available at http://localhost:${PORT}/operaciongetempresaid/parametro`);
  console.log(`Post operation available at http://localhost:${PORT}/operacionpostempresa`);
  console.log(`Put operation available at http://localhost:${PORT}/operacionputempresa/parametro`);
  console.log(`Delete operation available at http://localhost:${PORT}/operaciondeleteempresaparametro/parametro`);
});
