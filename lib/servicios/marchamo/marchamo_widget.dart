import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'marchamo_model.dart';
export 'marchamo_model.dart';

class MarchamoWidget extends StatefulWidget {
  const MarchamoWidget({Key? key}) : super(key: key);

  @override
  _MarchamoWidgetState createState() => _MarchamoWidgetState();
}

class _MarchamoWidgetState extends State<MarchamoWidget> {
  late MarchamoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarchamoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: FlutterFlowWebView(
            content:
                'https://marchamo.ins-cr.com/marchamo/frmConsultaMarchamo.aspx',
            bypass: false,
            width: 390.0,
            height: 844.0,
            verticalScroll: false,
            horizontalScroll: false,
          ),
        ),
      ),
    );
  }
}
