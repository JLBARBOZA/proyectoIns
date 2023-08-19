import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nosotros_model.dart';
export 'nosotros_model.dart';

class NosotrosWidget extends StatefulWidget {
  const NosotrosWidget({Key? key}) : super(key: key);

  @override
  _NosotrosWidgetState createState() => _NosotrosWidgetState();
}

class _NosotrosWidgetState extends State<NosotrosWidget> {
  late NosotrosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NosotrosModel());
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
              collapsedHeight: 80.0,
              pinned: true,
              floating: true,
              snap: true,
              backgroundColor: Colors.black,
              automaticallyImplyLeading: false,
              leading: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('HomePage');
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
              actions: [],
              flexibleSpace: FlexibleSpaceBar(
                background: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.network(
                      'data:image/png;base64,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',
                      fit: BoxFit.contain,
                    ),
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              child: Text(
                                'Nosotros',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF07870C),
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 15.0, 15.0, 15.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('btnServicios pressed ...');
                                },
                                text: 'Gobierno Corporativo',
                                icon: Icon(
                                  Icons.corporate_fare,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF07870C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontSize: 25.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 15.0, 15.0, 15.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('btnProductos pressed ...');
                                },
                                text: 'Historia',
                                icon: Icon(
                                  Icons.history,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF07870C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontSize: 25.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 15.0, 15.0, 15.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.network(
                                  '',
                                ).image,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('transparencia');
                                },
                                text: 'Red de Transparencia',
                                icon: Icon(
                                  Icons.manage_search_sharp,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF07870C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        fontSize: 25.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
