import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rendicion2022_p_d_f_model.dart';
export 'rendicion2022_p_d_f_model.dart';

class Rendicion2022PDFWidget extends StatefulWidget {
  const Rendicion2022PDFWidget({Key? key}) : super(key: key);

  @override
  _Rendicion2022PDFWidgetState createState() => _Rendicion2022PDFWidgetState();
}

class _Rendicion2022PDFWidgetState extends State<Rendicion2022PDFWidget> {
  late Rendicion2022PDFModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Rendicion2022PDFModel());
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
                      'assets/pdfs/informe-anual-de-rendicin-de-cuentas-2022.pdf',
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
