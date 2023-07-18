import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActualizarDatosPersonalesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Correo widget.
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;
  // State field(s) for Nombre widget.
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for Edad widget.
  TextEditingController? edadController;
  String? Function(BuildContext, String?)? edadControllerValidator;
  // State field(s) for datoPersonal widget.
  TextEditingController? datoPersonalController1;
  String? Function(BuildContext, String?)? datoPersonalController1Validator;
  // State field(s) for datoPersonal widget.
  TextEditingController? datoPersonalController2;
  String? Function(BuildContext, String?)? datoPersonalController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    correoController?.dispose();
    nombreController?.dispose();
    edadController?.dispose();
    datoPersonalController1?.dispose();
    datoPersonalController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
