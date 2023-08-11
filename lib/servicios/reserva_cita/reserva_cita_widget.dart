import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reserva_cita_model.dart';
export 'reserva_cita_model.dart';

class ReservaCitaWidget extends StatefulWidget {
  const ReservaCitaWidget({Key? key}) : super(key: key);

  @override
  _ReservaCitaWidgetState createState() => _ReservaCitaWidgetState();
}

class _ReservaCitaWidgetState extends State<ReservaCitaWidget> {
  late ReservaCitaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReservaCitaModel());
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
            content: 'https://citas.grupoins.com',
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
