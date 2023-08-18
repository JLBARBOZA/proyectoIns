import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResetPModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  String emailActual = 'default';

  ///  State fields for stateful widgets in this component.

  // State field(s) for emailActual widget.
  TextEditingController? emailActualController;
  String? Function(BuildContext, String?)? emailActualControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    emailActualController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
