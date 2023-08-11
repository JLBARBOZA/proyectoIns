import '/components/buscar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'estudiantil_model.dart';
export 'estudiantil_model.dart';

class EstudiantilWidget extends StatefulWidget {
  const EstudiantilWidget({Key? key}) : super(key: key);

  @override
  _EstudiantilWidgetState createState() => _EstudiantilWidgetState();
}

class _EstudiantilWidgetState extends State<EstudiantilWidget> {
  late EstudiantilModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EstudiantilModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              expandedHeight: 200.0,
              collapsedHeight: 60.0,
              pinned: true,
              floating: true,
              snap: true,
              backgroundColor: Colors.black,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              actions: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return GestureDetector(
                          onTap: () => FocusScope.of(context)
                              .requestFocus(_model.unfocusNode),
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: BuscarWidget(),
                          ),
                        );
                      },
                    ).then((value) => setState(() {}));
                  },
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'data:image/png;base64,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',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              centerTitle: true,
              elevation: 2.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 10.0, 20.0, 0.0),
                              child: Text(
                                'Seguro Estudiantil',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF07870C),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              child: Text(
                                'En el INS nos matriculamos a clases con sus hijos y\nlos protegemos, no solo durante su jornada lectiva,\nsino también, durante las 24 horas del día con nuestro \nSeguro Estudiantil INS Autoexpedible.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 391.0,
                        height: 605.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: Container(
                                      width: 370.0,
                                      height: 279.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(3.0, 3.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 3.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.0, -1.01),
                                            child: Container(
                                              width: 369.0,
                                              height: 104.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFFC107),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.03, -1.01),
                                            child: Container(
                                              width: 233.0,
                                              height: 104.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFF5F5F5),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(20.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -0.92),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(3.0, 3.0, 3.0, 3.0),
                                              child: Container(
                                                width: 55.0,
                                                height: 56.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00F5F5F5),
                                                  border: Border.all(
                                                    color: Color(0x002196F3),
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/pollo.png',
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.42, -0.79),
                                            child: Container(
                                              width: 154.0,
                                              height: 34.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00F5F5F5),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                              child: Text(
                                                'Plan Pollitos',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 25.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.88, -0.87),
                                            child: Container(
                                              width: 103.0,
                                              height: 73.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x002196F3),
                                              ),
                                              child: Text(
                                                '₡ 12.780\nAnuales',
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 25.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -3.33, 1.02),
                                            child: Container(
                                              width: 363.0,
                                              height: 169.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x002196F3),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.79),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Gastos Médicos',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.46),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Referencias nutricionales telefónicas',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.12),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Orientación Psicológica',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.2),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Orientación Pedagógica',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.05, 0.58),
                                                      child: Text(
                                                        'Hasta ₡ 3.000.000 en coberturas',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: Container(
                                      width: 370.0,
                                      height: 279.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(3.0, 3.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 3.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.0, -1.01),
                                            child: Container(
                                              width: 369.0,
                                              height: 104.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.03, -1.01),
                                            child: Container(
                                              width: 233.0,
                                              height: 104.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(20.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -0.92),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(3.0, 3.0, 3.0, 3.0),
                                              child: Container(
                                                width: 55.0,
                                                height: 56.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00F5F5F5),
                                                  border: Border.all(
                                                    color: Color(0x002196F3),
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/pollo.png',
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.42, -0.79),
                                            child: Container(
                                              width: 154.0,
                                              height: 34.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00F5F5F5),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                              child: Text(
                                                'Plan Kikiri',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 25.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.88, -0.87),
                                            child: Container(
                                              width: 103.0,
                                              height: 73.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x002196F3),
                                              ),
                                              child: Text(
                                                '₡ 18.550\nAnuales',
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 25.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -3.33, 1.02),
                                            child: Container(
                                              width: 363.0,
                                              height: 169.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x002196F3),
                                                border: Border.all(
                                                  color: Color(0x002196F3),
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.79),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Gastos Médicos',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.46),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Referencias nutricionales telefónicas',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.12),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Orientación Psicológica',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.2),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Orientación Pedagógica',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.05, 0.58),
                                                      child: Text(
                                                        'Hasta ₡ 6.000.000 en coberturas',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: Container(
                                      width: 370.0,
                                      height: 279.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 3.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.0, -1.01),
                                            child: Container(
                                              width: 369.0,
                                              height: 104.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.03, -1.01),
                                            child: Container(
                                              width: 233.0,
                                              height: 104.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(20.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -0.92),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(3.0, 3.0, 3.0, 3.0),
                                              child: Container(
                                                width: 55.0,
                                                height: 56.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00F5F5F5),
                                                  border: Border.all(
                                                    color: Color(0x002196F3),
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/pollo.png',
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.42, -0.73),
                                            child: Container(
                                              width: 154.0,
                                              height: 34.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00F5F5F5),
                                                border: Border.all(
                                                  color: Color(0x002196F3),
                                                ),
                                              ),
                                              child: Text(
                                                'Plan Super Pollito',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 18.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.88, -0.87),
                                            child: Container(
                                              width: 103.0,
                                              height: 73.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x002196F3),
                                              ),
                                              child: Text(
                                                '₡ 18.550\nAnuales',
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 25.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -3.33, 1.02),
                                            child: Container(
                                              width: 363.0,
                                              height: 169.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x002196F3),
                                                border: Border.all(
                                                  color: Color(0x002196F3),
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.79),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Gastos Médicos',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.46),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Referencias nutricionales telefónicas',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.12),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Orientación Psicológica',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.2),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Orientación Pedagógica',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.05, 0.58),
                                                      child: Text(
                                                        'Hasta ₡ 7.500.000 en coberturas',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: Container(
                                      width: 370.0,
                                      height: 279.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 3.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.0, -1.01),
                                            child: Container(
                                              width: 369.0,
                                              height: 104.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.03, -1.01),
                                            child: Container(
                                              width: 233.0,
                                              height: 104.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(20.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -0.92),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(3.0, 3.0, 3.0, 3.0),
                                              child: Container(
                                                width: 55.0,
                                                height: 56.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00F5F5F5),
                                                  border: Border.all(
                                                    color: Color(0x002196F3),
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/pollo.png',
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.42, -0.73),
                                            child: Container(
                                              width: 154.0,
                                              height: 34.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00F5F5F5),
                                                border: Border.all(
                                                  color: Color(0x002196F3),
                                                ),
                                              ),
                                              child: Text(
                                                'Plan Pikito',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 25.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.88, -0.87),
                                            child: Container(
                                              width: 103.0,
                                              height: 73.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x002196F3),
                                              ),
                                              child: Text(
                                                '₡ 6.600\nAnuales',
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 25.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -3.33, 1.02),
                                            child: Container(
                                              width: 363.0,
                                              height: 169.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x002196F3),
                                                border: Border.all(
                                                  color: Color(0x002196F3),
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.79),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Gastos Médicos',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.46),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Muerte accidental',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.2),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Incapacidad total y/o parcial\npermanente por accidente\n',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.05, 0.58),
                                                      child: Text(
                                                        'Hasta ₡ 1.500.000 en coberturas',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: Container(
                                      width: 370.0,
                                      height: 279.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 3.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.0, -1.01),
                                            child: Container(
                                              width: 369.0,
                                              height: 104.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.03, -1.01),
                                            child: Container(
                                              width: 233.0,
                                              height: 104.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(20.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -0.92),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(3.0, 3.0, 3.0, 3.0),
                                              child: Container(
                                                width: 55.0,
                                                height: 56.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00F5F5F5),
                                                  border: Border.all(
                                                    color: Color(0x002196F3),
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/pollo.png',
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.42, -0.79),
                                            child: Container(
                                              width: 154.0,
                                              height: 34.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00F5F5F5),
                                                border: Border.all(
                                                  color: Color(0x002196F3),
                                                ),
                                              ),
                                              child: Text(
                                                'Plan Pío',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 25.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.88, -0.87),
                                            child: Container(
                                              width: 103.0,
                                              height: 73.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x002196F3),
                                              ),
                                              child: Text(
                                                '₡ 9.750\nAnuales',
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 25.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -3.33, 1.02),
                                            child: Container(
                                              width: 363.0,
                                              height: 169.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x002196F3),
                                                border: Border.all(
                                                  color: Color(0x002196F3),
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.79),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Gastos Médicos',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.46),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Referencias nutricionales telefónicas',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.12),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Orientación Psicológica',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.2),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent1,
                                                              size: 24.0,
                                                            ),
                                                            Text(
                                                              'Orientación Pedagógica',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.05, 0.58),
                                                      child: Text(
                                                        'Hasta ₡ 1.500.000 en coberturas',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
