// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future cotizacionPdf(CotizacionRecord newRecord) async {
  String fileContent = "PasaporteCedula,Nombre,Apellidos,Celular,Correo,Seguro";

  fileContent += "\n" +
      newRecord.pasaporteCedula.toString() +
      "," +
      newRecord.nombre.toString() +
      "," +
      newRecord.apellidos.toString() +
      "," +
      newRecord.celular.toString() +
      "," +
      newRecord.correo.toString() +
      "," +
      newRecord.seguro.toString();

  final fileName = "Cotizacion" + ".pdf";

  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
