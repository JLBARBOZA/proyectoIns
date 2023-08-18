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
import 'actualizar_contrasenna_model.dart';
export 'actualizar_contrasenna_model.dart';

class ActualizarContrasennaWidget extends StatefulWidget {
  const ActualizarContrasennaWidget({Key? key}) : super(key: key);

  @override
  _ActualizarContrasennaWidgetState createState() =>
      _ActualizarContrasennaWidgetState();
}

class _ActualizarContrasennaWidgetState
    extends State<ActualizarContrasennaWidget> with TickerProviderStateMixin {
  late ActualizarContrasennaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActualizarContrasennaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF57636C),
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Actualizar Contraseña',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Outfit',
                color: Color(0xFF0F1113),
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                  child: Text(
                    'Ingresa tu email actual',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF57636C),
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: wrapWithModel(
              model: _model.resetPModel,
              updateCallback: () => setState(() {}),
              child: ResetPWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
