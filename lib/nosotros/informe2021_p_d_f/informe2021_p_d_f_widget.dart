import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'informe2021_p_d_f_model.dart';
export 'informe2021_p_d_f_model.dart';

class Informe2021PDFWidget extends StatefulWidget {
  const Informe2021PDFWidget({Key? key}) : super(key: key);

  @override
  _Informe2021PDFWidgetState createState() => _Informe2021PDFWidgetState();
}

class _Informe2021PDFWidgetState extends State<Informe2021PDFWidget> {
  late Informe2021PDFModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Informe2021PDFModel());
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
                  assetPath:
                      'assets/pdfs/informe-anual-gobierno-corporativo-2021.pdf',
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
