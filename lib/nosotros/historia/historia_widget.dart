import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'historia_model.dart';
export 'historia_model.dart';

class HistoriaWidget extends StatefulWidget {
  const HistoriaWidget({Key? key}) : super(key: key);

  @override
  _HistoriaWidgetState createState() => _HistoriaWidgetState();
}

class _HistoriaWidgetState extends State<HistoriaWidget> {
  late HistoriaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistoriaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF212121),
        appBar: AppBar(
          backgroundColor: Color(0xFF07870C),
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('nosotros');
            },
            child: Icon(
              Icons.chevron_left_rounded,
              color: FlutterFlowTheme.of(context).primaryBtnText,
              size: 32.0,
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
              child: Text(
                'Historia',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      fontSize: 30.0,
                    ),
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 4.0),
                        child: Text(
                          'El Instituto Nacional de Seguros ( INS ) se fundó mediante Ley número 12, el 30 de octubre de 1924 y en su creación tomaron parte el Lic. Ricardo Jiménez Oreamuno, Presidente de la República, quien iniciaba su segunda administración (1924-1928), y el Lic. Tomás Soley Güell, Secretario de Hacienda y Comercio, gestor del proyecto.\n\nEn sus inicios se llamó Banco Nacional de Seguros, en decreto del 21 de mayo de 1948 cambió su nombre a Instituto Nacional de Seguros (INS), mismo que se mantiene en la actualidad. El INS tuvo a su cargo la administración del monopolio de los seguros desde su creación hasta el 07 de agosto del 2008, fecha en que entró en vigencia la Ley número 8653 “Ley Reguladora del Mercado de Seguros”, la cual abrió el mercado y devenga la competencia.',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                        child: FlutterFlowYoutubePlayer(
                          url: 'https://www.youtube.com/watch?v=TTFEBN0QvDQ',
                          autoPlay: false,
                          looping: true,
                          mute: false,
                          showControls: true,
                          showFullScreen: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
