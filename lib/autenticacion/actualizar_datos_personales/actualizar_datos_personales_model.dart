import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
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
  TextEditingController? datoPersonalController;
  final datoPersonalMask = MaskTextInputFormatter(mask: '##.##.####');
  String? Function(BuildContext, String?)? datoPersonalControllerValidator;
  // State field(s) for txtIdentificacion widget.
  TextEditingController? txtIdentificacionController;
  String? Function(BuildContext, String?)? txtIdentificacionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    correoController?.dispose();
    nombreController?.dispose();
    edadController?.dispose();
    datoPersonalController?.dispose();
    txtIdentificacionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
