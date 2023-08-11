import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cotizacion_model.dart';
export 'cotizacion_model.dart';

class CotizacionWidget extends StatefulWidget {
  const CotizacionWidget({Key? key}) : super(key: key);

  @override
  _CotizacionWidgetState createState() => _CotizacionWidgetState();
}

class _CotizacionWidgetState extends State<CotizacionWidget> {
  late CotizacionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CotizacionModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
    _model.textController5 ??= TextEditingController();
    _model.textController6 ??= TextEditingController();
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
              expandedHeight: 100.0,
              collapsedHeight: 60.0,
              pinned: true,
              floating: true,
              snap: true,
              backgroundColor: Colors.black,
              automaticallyImplyLeading: false,
              actions: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 24.0,
                    ),
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAasAAAB2CAMAAABBGEwaAAAAh1BMVEUAAAD///8MDAzOzs7T09Pt7e04ODiqqqpNTU12dna5ubnExMTq6uq/v7/r6+v39/fk5OTy8vKOjo6Xl5chISGGhobY2NiwsLA9PT2ioqJgYGB+fn7e3t5GRkYrKytVVVUbGxsxMTFsbGyCgoJSUlJ5eXmTk5MtLS1vb28LCwtdXV0eHh5CQkLeZQnKAAAL5UlEQVR4nO2d6YKivBKGRVSQpQFREERFXNvP+7++QxayQFC7xeGMU8+vEWhM8iaVSqXiDAYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAX8Z5cDOtNJn2XQ7gDvPV6ZBonkbJfE3f9V0mQM1V40JR/MnQtpd9FwxoYGoKMk0L+y4YUGeSxkbFSJQr8J34nO8O203fRQQwaRKohlWFF5Xm0VkUyOP47rus/zjWPaGkQTZLvGDdd3H/ZYajxyoJJH2X999luEz1H2mlWZY/AvewB25hErtWhe04X2NO4NX9eMp40ne5/znWRly6f7GEZXP0LGsZW7Y17Lvw/xjJz4yfRLbar2B0vZ9NqI+Swc5usXBPM4Yw1HvJQ4c09ItCIYy+K/PZRJnnBSWvjimMc+67Oh/NbrIrOW/Wqcj1ul3MBMIwTCwBPYoiVWzDN/uuzwezNxKErcuMvfu0D61x3zX6VE6jTkyfBIyst3DqXCjCrO+KfRrfF7f7QUVx9OF623cFP4hJNPb9u3sfr2BrmrUq+q7jp7MjTMyK9fSIWZyYWxi7CHvEcZSKWX1X5kNIZd9vVCer4wRjmScGJTganfDDnY/f8V/ftfz7GW5t522OhYiTgFovkv8JnQi+BXbwJZYRJfObBE1eGoOnvmv7IQznDTZrU+CAMK9TgQUhZElpRlz5I0pvI4aA7n2Gt/aNvxSHAInfLTFqDrJXBlTFeP4HK/4XctEy5cbfppysOhHgB0Cm032m6nyVs+/OXtmp712rIbLQH2ZUFVrtVovjz1L/OiKSy3GtprkZStrd0invIj90rHK0r+zS8mgI0ZHMWLwli3R+vSRhYXab6jPcTsNZ2jYrKbS6xnHsNsITJdGbtfIWUjl4g6OsQuaOSKcaduwZl15Zul/1947truPDN4PND3rC5pCFg2Zu27WNhK4/TuUVpzIX6CbKNDnix/TysfAqvnQ4q0aIF6eqb22xgT9jvqyzLqazBicraiJmp432OX/phi0A/NLnmPOnxHpM2dUYf85jdTdwuzwC8V8srU28hJY6FK7ZWEE8jVTBTnyjbOyF8NiILyqnknNsKfysplYFT9HMHAW1YN/46+trrFhqBT/bJqYIEfeCXbQH+JxXhZgZz+fUPfq4bHWHavb1FXaN+LNPhlYoXgvywWOtyseqTGS39k7n0PjihlZpL1NVxYoXhNccVXYmPDTiD/HjD8jMbe7kWHV2ICxV9LigaGil6U9ppfl4xM+bya9eY6eooZXRXt0/wUhREGTwpW7HtlC+eccaSIchvCgp0nSh83b1OnIK88pU6eFiYVRNHDW1QjbiCa1I97T5S2dW0FLihlZt2c1/ClYam11CHUz2a6oz5HOmRVB+2rP7TjWncUOq3bqRihTEqxyGOR7Z2ZlpVY7fzQkXy7inVfnYZIWNKeqdtF+G1KtcEfvg5/e1yo/7FWVfy1hnmetKXF2N7yhCib56y1ETqjbknWbXsBEeNeYTdsWV9OTL+8R1XSuOw33T/P8KYosDoc22AbVjRCucQ7KiIrRrhYOf+ACvVzlOY270NqQqNbut8AOHG4oY/ftveaMs1xxTSBUsGLOTQEiJdVuELgNUYh3w9siGXyg/HWoRxIAU9cAuhFVj4Lt5J7qowOUYS2N04tIW5FrhovgPtcKRoVIr4ryKvYn0zUA+DdrU6pDVPT3s7ala9U3gOevGPpZ1Hlzqz5AGWLHP04GglRbtO5BFBTGzV/VNrhXuaNlDrXboX95giU2ePIjWGnsZo6nV9W15MM+CBw1XB62cZo2HcNW4G4iaT7KT9iJ9wwkHPAL0lptMqzmea91HWm3wlrtPJtVxbQXoin9KaGrVsyOoUc+Ir5xm6kIhk8FmKH8yaPhhmh/Fl271GuIvbBu0+Pt916aT8eKeVuVjtGuF5Cm39rItfkoKYTW0MrNyGtH1WEeLXAVdHBO5DykQdxSQeeNDhv0LmUa29MVm86xaCXt22F08cI5k8Nr0l/tKtnnKZy/nPjyEVvW34btSZkNDq+8h1TKvqG0xTmgYyayxLRc0RVpM6xyRZ5EYTayWPccRjt4xTbztQJiK9DX7m1iIINi4yDe1+fbsbvz1Sqvq0+YgVH9d1wpZ5Se0Smm3bPipT2hVcrGtreCZN/cayYajAktXhqUc5+k5UI/p7MxkwOaN3Y+FEGBqstfS5c6kJRzodXSmXNZqL37FWNYqwoP5oVY+8tNxt2yEl5/Tygh3v5y0rKClsZ4mGcyxieGRHGTersJ9vkj2eGPxmhZupDDTTjfzFtGq8gJW4jd8SVpNiXF6oFW0wK/CFWpElPATUgS3Jc7+jFYLu3bBKt0ymk3o3Vns3iWjgRUuA/K6uBtYDroJ04KLkgtlH66LRVxfY3TjxH/j6h3pJ0krv4pb4E5GHfC7cQu2eMKNXT/qiZ324L5vgVg+9Ysw4a1+ZXGmi1vv6DZ//+xJyOKF91FUbRYN9NDdtPlHinY9nCzB17B/LoyKWHyXZAMtWuYF7lcBmSGbWu3E9RXTQCOukkjSLLVSq5nmP3T3vEBvaKXFE9KqvlUuRxvr18cE+sUnxoD3FhTaYyM4OLN6iIwaVcDk/C1ta6IfQoYStbgmOT+Y4E55Yesr3HRkAsVqSlp9K7Qy8QuO0hfNA/6WCqVW6WWwbI/hzlB3DZL5sLHnUs4LVavGVeREwHtoWXk/4kOi7IkbVhh6GrK+Qx23NC3/xbyuTpNjIeTfEcCCoAgh1YroaZLW1Z7QinRFb9O8JEvTti98pHWUHTg787LRfrcYzknvn46tOLMczRt52khMfDcanX8UlddsfRQFqiFLs0B5WfitQRVwQVBLMalNh6fBkn27aDe4JVVuiv8CMnM6wpU1Lno8YFqRqDNW6IDuRWTSqQK1Cq22pIUEZ5X089rxmTatzpZB1uiFLmgQTYtzLnqXk/kgv3j6xUSLoj0TNliXE6alu6l1vMyCLDvNjgNU4vlk8H2ztOQkHWhwZsX6UHak4+LK5ltJnS37VJW+NmVNxSAUD6IVbMqMukqXp3siAfuSFfmOfMBjTKSfo4E1rDZHqkUI2udqakUtflA5QGvSPEHNeW3Pt0Dj4oi+5xKPtbFT77ICLvMsQ9o4XqG3b8ReUSrSNcbConlRZcC4FujukX1i7pxkTsuuIf4+qD67fQ/yw0zwU1uirb+g2obxw+JwuM6oNcZZPSweiC/iGZL4Wla6XRGjjiYghVZz+hrHKLbXVbVDWnfj27U6XEdZPl0i33KaXXcTN17mD2tSzVHe4+z03Uo3ptvUUc41/IQyqh0Xhre5OGWVY28oGWsvGEu59V1mHkren9ChBK3IDicyuzX/CoenFFopIy6NQt/LY5r+PFWLdeUX1zN8SKC6cz+Hh/aWghbITtYDt3dr/RJpo11pd+N7Im5VqtpCFSc3qrRS+HKLQZ1Ocs4YLDLU5pg9C5vP8IKKeSOZ4CsJ2/N4QmhdEzpd/2r8Uj4+6FVzV8hEWOIbab1YpPmrtbDMXC6/o7Da3WrFTNfl8bP3EJz00mpMWEfWxY1SviYgMWqVcSpJ3vCraluXdR/fyKurs8BxAqKHNXacsY7vrKq66LT5j/wx+aUWe6muNEudaXXbrhI+4LPXMl15AB1t63BzJ+2TspVutQwZnvSaeYqsFztNKxsTpaMkK1OI2OUo8SEnRcFJEMRZz819HBv7teKx+ku3qziOT8VS/UvOv9fqOz9PzG1RnE6u3vwpTm/shjOeglFctxXmpGKZcxpNQcGfJvRP6/sG5hUjVOBsFguSwRPuC3OibJG/lh9r9b00jwvDcm09ehyIUsKTOHim9EhKnGGZv+EeH7e7kEQc/PVvaYW/g4da5bvlNV2tZqc4jt59+OB5MqQvGj4JSpRHGXLpdntd7naf/CuSU81RabU8XKaJoUdZ5n+N/8hJ/JfxPG/sfH2hX9iIosw1jGR6nJrmJ/2/C0qjMozL+tK93pYczf9XxDNI6BhKI4/h4/gefgr/8gQHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG/gf5OI7vx28XdkAAAAAElFTkSuQmCC',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              centerTitle: false,
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
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 20.0, 20.0, 20.0),
                                        child: Text(
                                          'Cedula/Pasaporte',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: TextFormField(
                                controller: _model.textController1,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Digita tu cédula o pasaporte',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                                validator: _model.textController1Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Text(
                                  'Nombre',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Text(
                                  'Apellidos',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: TextFormField(
                                controller: _model.textController2,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Digita tu nombre',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                                validator: _model.textController2Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: TextFormField(
                                controller: _model.textController3,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Digita tus apellidos',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                                validator: _model.textController3Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Text(
                                  'Numero de celular',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.textController4,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Digita tu numero de celular',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                                validator: _model.textController4Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Text(
                                  'Correo Electronico',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController5,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Digita tu email',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                              validator: _model.textController5Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Text(
                                'Seguro a cotizar',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
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
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController6,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Digite el seguro que desea cotizar',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController6Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Container(
                                width: 309.0,
                                height: 140.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 433.0,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 40.0),
                                          child: PageView(
                                            controller: _model
                                                    .pageViewController ??=
                                                PageController(initialPage: 0),
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/doctor.png',
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/viajero.png',
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/robo.png',
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/graduado.png',
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 16.0),
                                            child: smooth_page_indicator
                                                .SmoothPageIndicator(
                                              controller:
                                                  _model.pageViewController ??=
                                                      PageController(
                                                          initialPage: 0),
                                              count: 4,
                                              axisDirection: Axis.horizontal,
                                              onDotClicked: (i) async {
                                                await _model.pageViewController!
                                                    .animateToPage(
                                                  i,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              effect: smooth_page_indicator
                                                  .ExpandingDotsEffect(
                                                expansionFactor: 3.0,
                                                spacing: 8.0,
                                                radius: 16.0,
                                                dotWidth: 16.0,
                                                dotHeight: 8.0,
                                                dotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                activeDotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                paintStyle: PaintingStyle.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('CotizacionConfirma');

                              await CotizacionRecord.collection
                                  .doc()
                                  .set(createCotizacionRecordData(
                                    pasaporteCedula:
                                        _model.textController1.text,
                                    nombre: _model.textController2.text,
                                    apellidos: _model.textController3.text,
                                    celular: int.tryParse(
                                        _model.textController4.text),
                                    correo: _model.textController5.text,
                                    seguro: _model.textController6.text,
                                  ));
                            },
                            text: 'Siguiente',
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
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
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
