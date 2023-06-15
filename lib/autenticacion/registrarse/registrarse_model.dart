import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrarseModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController1;
  String? Function(BuildContext, String?)? emailAddressController1Validator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController2;
  String? Function(BuildContext, String?)? emailAddressController2Validator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for confirmPassword widget.
  TextEditingController? confirmPasswordController;
  String? Function(BuildContext, String?)? confirmPasswordControllerValidator;
  // State field(s) for Edad widget.
  TextEditingController? edadController;
  String? Function(BuildContext, String?)? edadControllerValidator;
  // State field(s) for Genero widget.
  FormFieldController<String>? generoValueController;
  // State field(s) for SeguroCCSS widget.
  FormFieldController<String>? seguroCCSSValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    emailAddressController1?.dispose();
    emailAddressController2?.dispose();
    passwordController?.dispose();
    confirmPasswordController?.dispose();
    edadController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get generoValue => generoValueController?.value;
  String? get seguroCCSSValue => seguroCCSSValueController?.value;
}
