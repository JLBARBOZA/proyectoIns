import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'centros_estimacion_p_d_f_model.dart';
export 'centros_estimacion_p_d_f_model.dart';

class CentrosEstimacionPDFWidget extends StatefulWidget {
  const CentrosEstimacionPDFWidget({Key? key}) : super(key: key);

  @override
  _CentrosEstimacionPDFWidgetState createState() =>
      _CentrosEstimacionPDFWidgetState();
}

class _CentrosEstimacionPDFWidgetState
    extends State<CentrosEstimacionPDFWidget> {
  late CentrosEstimacionPDFModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CentrosEstimacionPDFModel());
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FlutterFlowPdfViewer(
                  assetPath: 'assets/pdfs/20230809.pdf',
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  horizontalScroll: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
