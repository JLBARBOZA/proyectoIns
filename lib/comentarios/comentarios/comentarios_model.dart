import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComentariosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for usuarioNombre widget.
  TextEditingController? usuarioNombreController;
  String? Function(BuildContext, String?)? usuarioNombreControllerValidator;
  // State field(s) for txtComentario widget.
  TextEditingController? txtComentarioController;
  String? Function(BuildContext, String?)? txtComentarioControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    usuarioNombreController?.dispose();
    txtComentarioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
