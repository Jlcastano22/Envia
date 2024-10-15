// infrastructureempresa.js

const { MongoClient, ObjectId } = require('mongodb');
const { ModelEmpresa, modelempresa } = require('../../../domain/object/empresa/modelempresa');

const uri = 'mongodb+srv://Envia:123@cluster0.fxfz3.mongodb.net/Envia?retryWrites=true&w=majority';
// const uri = 'mongodb+srv://prueba:123@cluster0.fxfz3.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0';
// "mongodb+srv://prueba:123@cluster0.fxfz3.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";
const dbName = 'Envia';
const collectionName = 'Empresa';

class InfrastructureEmpresa {
  constructor() {}
  // async consultarempresa(respuesta){
  // const client = new MongoClient(uri);
  // const db = client.db(dbName);
  // const collection = db.collection(collectionName);
  // let query = {};
  // const query1 = { title: '123' };
  // try {
  // const result = await collection.find(query).toArray();
  // const result1 = await collection.findOne(query);
  // console.log('Documentos encontrados:', result.length);
  // console.log(result);
  // } catch (error) {
  // console.error(error);
  // } finally {
  // await client.close();
  // }
  // return respuesta;
  // }
  async consultarempresa() {
    const client = new MongoClient(uri);
    const db = client.db(dbName);
    const col = db.collection(collectionName);
    let results = [];
    try {
      results = await col.find().toArray();
      console.log('Documentos encontrados:', results.length);
      console.log(results);
    } catch (err) {
      console.error(err);
      console.error(err.message);
    } finally {
      await client.close();
    }
    return results;
  }

  async consultarempresaid(id) {
    const client = new MongoClient(uri);
    const db = client.db(dbName);
    const col = db.collection(collectionName);
    let results = [];
    try {
      results = await col.find({ _id: new ObjectId(id) }).toArray();
      console.log('Documentos encontrados:', results.length);
      console.log(results);
    } catch (err) {
      console.error(err);
      console.error(err.message);
    } finally {
      await client.close();
    }
    return results;
  }

  async consultarempresarazonsocial(razonsocial) {
    const client = new MongoClient(uri);
    const db = client.db(dbName);
    const col = db.collection(collectionName);
    let results = [];
    try {
      results = await col.find({ RazonSocial: razonsocial }).toArray();
      console.log('Documentos encontrados:', results.length);
      console.log(results);
    } catch (err) {
      console.error(err);
      console.error(err.message);
    } finally {
      await client.close();
    }
    return results;
  }
}

module.exports = { InfrastructureEmpresa };
