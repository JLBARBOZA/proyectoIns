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

import 'package:material_dialogs/material_dialogs.dart';

class CambiarContrasena extends StatefulWidget {
  const CambiarContrasena({
    Key? key,
    this.width,
    this.height,
    required this.positiveAction,
    required this.negativeAction,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Future<dynamic> Function() positiveAction;
  final Future<dynamic> Function() negativeAction;

  @override
  _CambiarContrasenaState createState() => _CambiarContrasenaState();
}

class _CambiarContrasenaState extends State<CambiarContrasena> {
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        onPressed: () {
          Dialogs.materialDialog(
            msg: 'Quiere Modificar la Contraseña o Desea Cancelar',
            title: "Actualizar Contraseña",
            color: Colors.white,
            context: context,
            dialogWidth: 0.3,
            onClose: (value) => print("returned value is '$value'"),
            actions: [
              IconButton(
                icon: const Icon(Icons.done),
                onPressed: () {
                  widget.positiveAction();
                  Navigator.of(context).pop();
                },
              ),
              IconButton(
                icon: const Icon(Icons.cancel_outlined),
                onPressed: () {
                  widget.negativeAction();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
        child: Text('Actualizar Contraseña'),
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          primary: Color.fromARGB(255, 79, 175, 76),
        ),
      ),
    );
  }
}
