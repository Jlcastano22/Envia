INSERT INTO "Pais"
( "Nombre")
VALUES( 'Colombia'),( 'Venezuela'),( 'Estados Unidos');

SELECT InsertarDepartamento('Colombia', 'Antioquia');
SELECT InsertarDepartamento('Venezuela', 'Bolivar');
SELECT InsertarDepartamento('Estados Unidos', 'California');

SELECT InsertarCiudad('Antioquia', 'Medellin');
SELECT InsertarCiudad('Bolivar', 'Ciudad Bolivar');
SELECT InsertarCiudad('California', 'Sacramento');

INSERT INTO "Empresa"
( "RazonSocial", "Nit", "Conmutador")
VALUES( 'Envia S.A', '1123545', '1');

INSERT INTO "Sede"
( "IdEmpresa", "Nombre", "Direccion", "Barrio")
VALUES( 'e504b936-6653-4842-a412-e9540f847bb9', 'Envia', 'Calle 123 #2', 'El dorado'),( 'e504b936-6653-4842-a412-e9540f847bb9', 'Envia', 'Calle 1', 'Rosellon'),( 'e504b936-6653-4842-a412-e9540f847bb9', 'Envia', 'Carrera 2', 'San Jose') ;

INSERT INTO "Genero"
( "Nombre")
VALUES( 'Masculino'),( 'Femenino');

INSERT INTO "Envia"."TipoDocumento"
( "Nombre")
VALUES( 'Cedula'),( 'Tarjeta de identidad'),( 'Cedula de extranjeria');

INSERT INTO "EstadoCivil"
("Nombre")
VALUES( 'Soltero'),( 'Casado'),( 'Viudo');

INSERT INTO "TipoUsuario"
( "Nombre")
VALUES('Cliente'),('Trabajador'),('Administrador');

INSERT INTO "Usuario"
("IdTipoDocumento", "NumeroDocumento","nombre" , "IdGenero", "IdEstadoCivil", "IdTipoUsuario")
VALUES( '84691d4a-210e-4c39-b938-c60c4da03754', '102520', 'Jose','b7fe6c32-3ff1-49f9-bfd4-5aed8df70112' , 'e5b8a849-a868-404b-9b7b-685fea4451ff', 'c2b31451-55d8-4345-9cae-1bc553609606'),
( '84691d4a-210e-4c39-b938-c60c4da03754', '145760', 'Sara','ce542bd0-badb-4ec3-8c7b-575c4703e039','997b696b-f893-428a-881a-14798a7f4b2c' , 'c2b31451-55d8-4345-9cae-1bc553609606'),
( '84691d4a-210e-4c39-b938-c60c4da03754', '101222520', 'Esteban','b7fe6c32-3ff1-49f9-bfd4-5aed8df70112' , 'e5b8a849-a868-404b-9b7b-685fea4451ff', 'a1a3ec70-91ec-43d1-b8fa-bccde8aac7d8'),
( '84691d4a-210e-4c39-b938-c60c4da03754', '145654760', 'Samuel','b7fe6c32-3ff1-49f9-bfd4-5aed8df70112','e5b8a849-a868-404b-9b7b-685fea4451ff' , 'a1a3ec70-91ec-43d1-b8fa-bccde8aac7d8');

INSERT INTO "Empleado"
("IdSede", "IdUsuario", "Cargo", "Salario", "Jornada")
VALUES( '0529e018-ebb7-44f6-bbc2-b4effa3f757e', '7f9e14f9-2a01-46b0-930f-92d9b145c8b0', 'Repartidor', '10000000', 'Diurna'),
( 'd4a1f04e-2ceb-4ad4-bb68-7b79de33a928', '8a082698-e733-42f8-80c2-f51014bf1f88', 'Repartidor', '10000000', 'Nocturna');

INSERT INTO "TipoEnvio"
( "Nombre", "Caracteristicas")
VALUES( 'Clasico', 'Servicio estandar'),( 'Rapido', 'Entrega en menor tiempo'),( 'Especial', 'Entrega personalizada');

INSERT INTO "TipoPaquete"
( "Nombre", "Caracteristicas")
VALUES('Pesado', 'Peso mayor'),('Delicado', 'Contenido fragil'),('Grande', 'Grandes dimenciones');

INSERT INTO "Paquete"
( "IdTipoEnvio", "IdTipoPaquete", "Dimensiones ", "Peso", "Descripcion")
VALUES( '86a56a87-4427-4bfa-9d98-e2d9e90c9b5b', 'd35179d9-c7f0-41ba-9fa6-383025dce34d', '2 2 2', '2kg', 'Contenido delicado'),
( '4313229b-eca0-4fbf-8c00-9c041c4ec47f', '81311b18-b03f-4036-ad9f-05b7a0e879b2', '20 50 2', '200kg', 'Contenido Pesado'),
( '98e93f12-2bb9-4970-a19e-1c6858cce951', '91ee8be0-add5-42f2-9874-134876d56f64', '100 50 100', '50kg', 'Entrega especial');

INSERT INTO "DetalleEnvio"
( "IdPaquete", "DireccionRemitente", "DireccionDestinatario")
VALUES( 'd3454397-dfc6-40ce-91b3-f5997cc3dc58', 'Calle 2', 'Carrera 4'),
( '20efa079-ba6c-4525-a202-ec2710fd0cb4', 'Calle 22', 'Carrera 40'),
( '574b4859-b953-4f2f-9cd1-6e10ceab4c92', 'Calle 15', 'Carrera 9');

INSERT INTO "EstadoEnvio"
( "Nombre", "Encargado")
VALUES( 'Entregado', 'Repartidor 1'),
( 'En espera', 'Repartidor 2'),
( 'Rechazado', 'Repartidor 3');

INSERT INTO "ReciboDeEntrega"
( "IdCiudad", "IdEmpleado", "IdUsuario", "IdDetalleEnvio", "IdEstadoEnvio", "Total")
VALUES( '894630a8-8bbd-4ba4-976f-0d783b937e6e', '327d7917-2cd3-4a03-8777-a908710e0557', '7c6bc247-0ff7-4e84-97bd-e80de2a05d32', '23ab4c99-3b0f-4142-826c-2b535f46f84b', '5ce1e21c-c271-4ccb-89e2-2afc4a199ba9', '10000'),
( '894630a8-8bbd-4ba4-976f-0d783b937e6e', '327d7917-2cd3-4a03-8777-a908710e0557', '19905aa2-98e8-4061-ad9d-b9076f3d9793', '10c35921-faf0-4211-9223-ceb7302e423b', '42ba7058-c098-44e4-992e-3617776adb7a', '200000'),
( '4ccc2791-d18c-4c67-a2ef-f1b881e2842c', '25c92a9a-3933-4313-a9fa-19d1c6606bbc', '7c6bc247-0ff7-4e84-97bd-e80de2a05d32', 'cf2cc461-1863-4519-a5eb-e5ce478cba96', '9bbb95b2-947a-4edb-a5af-400b625e9220', '60000');




















