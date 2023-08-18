import '/components/reset_p_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActualizarContrasennaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for resetP component.
  late ResetPModel resetPModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    resetPModel = createModel(context, () => ResetPModel());
  }

  void dispose() {
    resetPModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
