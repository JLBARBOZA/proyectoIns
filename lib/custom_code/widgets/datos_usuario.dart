// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/src/material/icons.dart';

import 'package:material_dialogs/material_dialogs.dart';

class DatosUsuario extends StatefulWidget {
  const DatosUsuario({
    Key? key,
    this.width,
    this.height,
    required this.actionUno,
    required this.actionDos,
    required this.nombre,
    required this.email,
    required this.edad,
    required this.identificacion,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Future<dynamic> Function() actionUno;
  final Future<dynamic> Function() actionDos;
  final String nombre;
  final String email;
  final String edad;
  final String identificacion;

  @override
  _DatosUsuarioState createState() => _DatosUsuarioState();
}

class _DatosUsuarioState extends State<DatosUsuario> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        onPressed: () {
          Dialogs.materialDialog(
            //title: 'Perfil de Usuario',
            //msg: 'Usuario: ' + widget.nombre,
            color: Colors.white,
            context: context,
            dialogWidth: 0.3,

            customView: Column(
              children: <Widget>[
                Text(
                  'Perfil de Usuario',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Text(''),
                Text('Nombre del Usuario'),
                Text(widget.nombre),
                Text('******************'),
                Text('Email '),
                Text(widget.email),
                Text('******************'),
                Text('Edad '),
                Text(widget.edad),
                Text('******************'),
                Text('Identificación '),
                Text(widget.identificacion),
                Text('******************'),
              ],
            ),

            onClose: (value) => print("returned value is '$value'"),
            actions: [
              TextButton(
                child: Text('Actualizar'),
                onPressed: () {
                  widget.actionUno();
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Cerrar Sesion'),
                onPressed: () {
                  widget.actionDos();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },

        child: Icon(Icons.person),
        style: IconButton.styleFrom(
          shape: CircleBorder(),

          alignment: Alignment.center,

          //shape: StadiumBorder(),
        ),
        //child: null,
      ),
    );
  }
}
