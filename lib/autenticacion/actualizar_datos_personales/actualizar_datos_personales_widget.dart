import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'actualizar_datos_personales_model.dart';
export 'actualizar_datos_personales_model.dart';

class ActualizarDatosPersonalesWidget extends StatefulWidget {
  const ActualizarDatosPersonalesWidget({Key? key}) : super(key: key);

  @override
  _ActualizarDatosPersonalesWidgetState createState() =>
      _ActualizarDatosPersonalesWidgetState();
}

class _ActualizarDatosPersonalesWidgetState
    extends State<ActualizarDatosPersonalesWidget>
    with TickerProviderStateMixin {
  late ActualizarDatosPersonalesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActualizarDatosPersonalesModel());

    _model.correoController ??= TextEditingController(text: currentUserEmail);
    _model.nombreController ??=
        TextEditingController(text: currentUserDisplayName);
    _model.edadController ??= TextEditingController(
        text: valueOrDefault<String>(
      valueOrDefault(currentUserDocument?.edad, 0).toString(),
      '0',
    ));
    _model.datoPersonalController ??=
        TextEditingController(text: currentPhoneNumber);
    _model.txtIdentificacionController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.cedula, 0).toString());
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
          'Actualizar Datos Personales',
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
                    'Ingresa tus datos',
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
            child: TextFormField(
              controller: _model.correoController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Tu Correo',
                labelStyle: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF57636C),
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                hintText: 'Ingresa Tu Correo Electronico',
                hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF57636C),
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFF1F4F8),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Outfit',
                    color: Color(0xFF0F1113),
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
              maxLines: null,
              keyboardType: TextInputType.emailAddress,
              validator: _model.correoControllerValidator.asValidator(context),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
            child: AuthUserStreamWidget(
              builder: (context) => TextFormField(
                controller: _model.nombreController,
                autofocus: true,
                readOnly: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Tu Nombre Completo',
                  labelStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  hintText: 'Ingresa Tu Nombre Completo',
                  hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF1F4F8),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF0F1113),
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                maxLines: null,
                validator:
                    _model.nombreControllerValidator.asValidator(context),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
            child: AuthUserStreamWidget(
              builder: (context) => TextFormField(
                controller: _model.edadController,
                autofocus: true,
                readOnly: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Tu Edad',
                  labelStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  hintText: 'Ingresa Tu Edad',
                  hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF1F4F8),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF0F1113),
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                maxLines: null,
                keyboardType: TextInputType.phone,
                validator: _model.edadControllerValidator.asValidator(context),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
            child: AuthUserStreamWidget(
              builder: (context) => TextFormField(
                controller: _model.datoPersonalController,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Tu Numero Telefonico',
                  labelStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  hintText: 'Ingresa Tu Numero Telefonico',
                  hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF1F4F8),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF0F1113),
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                maxLines: null,
                keyboardType: TextInputType.phone,
                validator:
                    _model.datoPersonalControllerValidator.asValidator(context),
                inputFormatters: [_model.datoPersonalMask],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
            child: AuthUserStreamWidget(
              builder: (context) => TextFormField(
                controller: _model.txtIdentificacionController,
                autofocus: true,
                readOnly: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Tu Numero de Cedula',
                  labelStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  hintText: 'Ingresa Tu Numero de Cedula',
                  hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF1F4F8),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF0F1113),
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                maxLines: null,
                keyboardType: TextInputType.number,
                validator: _model.txtIdentificacionControllerValidator
                    .asValidator(context),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                await currentUserReference!.update(createUsersRecordData(
                  email: _model.correoController.text,
                  displayName: _model.nombreController.text,
                  phoneNumber: _model.datoPersonalController.text,
                  edad: int.tryParse(_model.edadController.text),
                  cedula: int.tryParse(_model.txtIdentificacionController.text),
                ));
              },
              text: 'Actualizar Datos',
              options: FFButtonOptions(
                width: 230.0,
                height: 50.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).success,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
