// apisimple.js

const express = require('express');
const { ModelEmpresa, modelempresa } = require('../../../domain/object/empresa/modelempresa');
const { CoreEmpresa } = require('../../../core/object/empresa/coreempresa');

var router = express.Router();

// GET
/**
 * @swagger
 * /operaciongetempresa:
 *   get:
 *     summary: Get all ModelEmpresa
 *     responses:
 *       200:
 *         description: List of ModelEmpresa
 */
router.get('/operaciongetempresa', async (req, res) => {
  try {
    const coreempresa = new CoreEmpresa();
    const respuestacoreempresa = await coreempresa.consultarempresa();
    res.status(200).json(respuestacoreempresa);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// Get by Id
/**
 * @swagger
 * /operaciongetempresaid/{id}:
 *   get:
 *     summary: Get ModelEmpresa by Id
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: A Item of ModelEmpresa
 */
router.get('/operaciongetempresaid/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const coreempresa = new CoreEmpresa();
    const respuestacoreempresa = await coreempresa.consultarempresaid(id);
    res.status(200).json(respuestacoreempresa);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// Get by Nombre
/**
 * @swagger
 * /operaciongetempresarazonsocial/{razonsocial}:
 *   get:
 *     summary: Get ModelEmpresa by RazonSocial
 *     parameters:
 *       - name: razonsocial
 *         in: path
 *         required: true
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: A Item of ModelEmpresa
 */
router.get('/operaciongetempresarazonsocial/:razonsocial', async (req, res) => {
  try {
    const { razonsocial } = req.params;
    const coreempresa = new CoreEmpresa();
    const respuestacoreempresa = await coreempresa.consultarempresarazonsocial(razonsocial);
    res.status(200).json(respuestacoreempresa);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// POST
/**
 * @swagger
 * /operacionpostempresa:
 *   post:
 *     summary: Create a new ModelEmpresa
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               razonsocial:
 *                 type: string
 *               nit:
 *                 type: string
 *     responses:
 *       201:
 *         description: ModelEmpresa created
 */
router.post('/operacionpostempresa', (req, res) => {
  const { razonsocial, nit } = req.body;
  const newModeloEmpresa = new ModelEmpresa(razonsocial, nit);
  modelempresa.push(newModeloEmpresa);
  res.status(201).json(newModeloEmpresa);
});

// PUT
/**
 * @swagger
 * /operacionputempresa/{parametro}:
 *   put:
 *     summary: Update an existing ModelEmpresa
 *     parameters:
 *       - name: parametro
 *         in: path
 *         required: true
 *         schema:
 *           type: string
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               idempresa:
 *                 type: string
 *               razonsocial:
 *                 type: string
 *               nit:
 *                 type: string
 *     responses:
 *       200:
 *         description: ModelEmpresa updated
 */
router.put('/operacionputempresa/:parametro', (req, res) => {
  const { idempresa, razonsocial, nit } = req.body;
  const newModeloEmpresa = new ModelEmpresa(idempresa, razonsocial, nit);

  newModeloEmpresa.idempresa = idempresa;
  newModeloEmpresa.razonsocial = razonsocial;
  newModeloEmpresa.nit = req.params.parametro;

  res.status(201).json(newModeloEmpresa);
});

// DELETE a user
/**
 * @swagger
 * /operaciondeleteempresaparametro/{parametro}:
 *   delete:
 *     summary: Delete a ModelEmpresa
 *     parameters:
 *       - name: parametro
 *         in: path
 *         required: true
 *         schema:
 *           type: string
 *     responses:
 *       204:
 *         description: ModelEmpresa deleted
 */
router.delete('/operaciondeleteempresaparametro/:parametro', (req, res) => {
  //const { parametro } = req.params;
  const Parametro = req.params.parametro;
  let Respuesta = ['Esto', 'Es', 'Una', 'Prueba', 'Delete', 'Con', 'Parametro:', Parametro];

  //res.status(200).json(Respuesta);
  res.status(200).json({ Message: 'Eliminado: ' + Parametro });
});

module.exports = router;
