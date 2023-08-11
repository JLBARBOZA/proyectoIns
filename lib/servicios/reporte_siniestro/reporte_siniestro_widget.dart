import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reporte_siniestro_model.dart';
export 'reporte_siniestro_model.dart';

class ReporteSiniestroWidget extends StatefulWidget {
  const ReporteSiniestroWidget({Key? key}) : super(key: key);

  @override
  _ReporteSiniestroWidgetState createState() => _ReporteSiniestroWidgetState();
}

class _ReporteSiniestroWidgetState extends State<ReporteSiniestroWidget> {
  late ReporteSiniestroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReporteSiniestroModel());
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
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: FlutterFlowWebView(
            content:
                'https://portal2.ins-cr.com/INSFRM/Web/formAvisoReclamo/frmAvisoReclamo.aspx',
            bypass: false,
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            verticalScroll: false,
            horizontalScroll: false,
          ),
        ),
      ),
    );
  }
}
