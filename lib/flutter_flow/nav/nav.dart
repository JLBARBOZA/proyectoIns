import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '/backend/backend.dart';

import '../../auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomePageWidget() : IngresoWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomePageWidget() : IngresoWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'marchamo',
          path: '/marchamo',
          builder: (context, params) => MarchamoWidget(),
        ),
        FFRoute(
          name: 'SegurosparaPersonas',
          path: '/segurosparaPersonas',
          builder: (context, params) => SegurosparaPersonasWidget(),
        ),
        FFRoute(
          name: 'Ingreso',
          path: '/ingreso',
          builder: (context, params) => IngresoWidget(),
        ),
        FFRoute(
          name: 'Registrarse',
          path: '/registrarse',
          builder: (context, params) => RegistrarseWidget(),
        ),
        FFRoute(
          name: 'actualizarContrasenna',
          path: '/actualizarContrasenna',
          builder: (context, params) => ActualizarContrasennaWidget(),
        ),
        FFRoute(
          name: 'actualizarDatosPersonales',
          path: '/actualizarDatosPersonales',
          builder: (context, params) => ActualizarDatosPersonalesWidget(),
        ),
        FFRoute(
          name: 'Comentarios',
          path: '/comentarios',
          builder: (context, params) => ComentariosWidget(),
        ),
        FFRoute(
          name: 'historia',
          path: '/historia',
          builder: (context, params) => HistoriaWidget(),
        ),
        FFRoute(
          name: 'agentesSeguros',
          path: '/agentesSeguros',
          builder: (context, params) => AgentesSegurosWidget(),
        ),
        FFRoute(
          name: 'contactenos',
          path: '/contactenos',
          builder: (context, params) => ContactenosWidget(),
        ),
        FFRoute(
          name: 'corredoresSeguros',
          path: '/corredoresSeguros',
          builder: (context, params) => CorredoresSegurosWidget(),
        ),
        FFRoute(
          name: 'sociedadesSeguros',
          path: '/sociedadesSeguros',
          builder: (context, params) => SociedadesSegurosWidget(),
        ),
        FFRoute(
          name: 'Robos',
          path: '/robos',
          builder: (context, params) => RobosWidget(),
        ),
        FFRoute(
          name: 'Estudiantil',
          path: '/estudiantil',
          builder: (context, params) => EstudiantilWidget(),
        ),
        FFRoute(
          name: 'Medicos',
          path: '/medicos',
          builder: (context, params) => MedicosWidget(),
        ),
        FFRoute(
          name: 'Viaje',
          path: '/viaje',
          builder: (context, params) => ViajeWidget(),
        ),
        FFRoute(
          name: 'servicios',
          path: '/servicios',
          builder: (context, params) => ServiciosWidget(),
        ),
        FFRoute(
          name: 'Cotizacion',
          path: '/cotizacion',
          builder: (context, params) => CotizacionWidget(),
        ),
        FFRoute(
          name: 'CotizacionConfirma',
          path: '/cotizacionConfirma',
          builder: (context, params) => CotizacionConfirmaWidget(),
        ),
        FFRoute(
          name: 'puntosYSedesMenu',
          path: '/puntosYSedesMenu',
          builder: (context, params) => PuntosYSedesMenuWidget(),
        ),
        FFRoute(
          name: 'datosSP',
          path: '/datosSP',
          builder: (context, params) => DatosSPWidget(
            categoria: params.getParam('categoria', ParamType.DocumentReference,
                false, ['sedes_menu']),
          ),
        ),
        FFRoute(
          name: 'RedProveedores',
          path: '/redProveedores',
          builder: (context, params) => RedProveedoresWidget(),
        ),
        FFRoute(
          name: 'agentesProvincias',
          path: '/agentesProvincias',
          builder: (context, params) => AgentesProvinciasWidget(
            provincia: params.getParam('provincia', ParamType.DocumentReference,
                false, ['agentesProvincias']),
          ),
        ),
        FFRoute(
          name: 'operadoresSeguros',
          path: '/operadoresSeguros',
          builder: (context, params) => OperadoresSegurosWidget(),
        ),
        FFRoute(
          name: 'Authenticate',
          path: '/authenticate',
          builder: (context, params) => AuthenticateWidget(),
        ),
        FFRoute(
          name: 'ReservaCita',
          path: '/reservaCita',
          builder: (context, params) => ReservaCitaWidget(),
        ),
        FFRoute(
          name: 'ReporteSiniestro',
          path: '/reporteSiniestro',
          builder: (context, params) => ReporteSiniestroWidget(),
        ),
        FFRoute(
          name: 'Avaluos',
          path: '/avaluos',
          builder: (context, params) => AvaluosWidget(),
        ),
        FFRoute(
          name: 'CentrosEstimacionPDF',
          path: '/centrosEstimacionPDF',
          builder: (context, params) => CentrosEstimacionPDFWidget(),
        ),
        FFRoute(
          name: 'nosotros',
          path: '/nosotros',
          builder: (context, params) => NosotrosWidget(),
        ),
        FFRoute(
          name: 'transparencia',
          path: '/transparencia',
          builder: (context, params) => TransparenciaWidget(),
        ),
        FFRoute(
          name: 'info',
          path: '/info',
          builder: (context, params) => InfoWidget(),
        ),
        FFRoute(
          name: 'digitalizacion',
          path: '/digitalizacion',
          builder: (context, params) => DigitalizacionWidget(),
        ),
        FFRoute(
          name: 'ciudadania',
          path: '/ciudadania',
          builder: (context, params) => CiudadaniaWidget(),
        ),
        FFRoute(
          name: 'gobierno',
          path: '/gobierno',
          builder: (context, params) => GobiernoWidget(),
        ),
        FFRoute(
          name: 'gobiernoCorporativo',
          path: '/gobiernoCorporativo',
          builder: (context, params) => GobiernoCorporativoWidget(),
        ),
        FFRoute(
          name: 'mision-vision',
          path: '/misionVision',
          builder: (context, params) => MisionVisionWidget(),
        ),
        FFRoute(
          name: 'organigrama',
          path: '/organigrama',
          builder: (context, params) => OrganigramaWidget(),
        ),
        FFRoute(
          name: 'descripcionPDF',
          path: '/descripcionPDF',
          builder: (context, params) => DescripcionPDFWidget(),
        ),
        FFRoute(
          name: 'organigramaPDF',
          path: '/organigramaPDF',
          builder: (context, params) => OrganigramaPDFWidget(),
        ),
        FFRoute(
          name: 'informe',
          path: '/informe',
          builder: (context, params) => InformeWidget(),
        ),
        FFRoute(
          name: 'informe2022PDF',
          path: '/informe2022PDF',
          builder: (context, params) => Informe2022PDFWidget(),
        ),
        FFRoute(
          name: 'informe2021PDF',
          path: '/informe2021PDF',
          builder: (context, params) => Informe2021PDFWidget(),
        ),
        FFRoute(
          name: 'informe2020PDF',
          path: '/informe2020PDF',
          builder: (context, params) => Informe2020PDFWidget(),
        ),
        FFRoute(
          name: 'informe2018PDF',
          path: '/informe2018PDF',
          builder: (context, params) => Informe2018PDFWidget(),
        ),
        FFRoute(
          name: 'informe2019PDF',
          path: '/informe2019PDF',
          builder: (context, params) => Informe2019PDFWidget(),
        ),
        FFRoute(
          name: 'rendicionCuentas',
          path: '/rendicionCuentas',
          builder: (context, params) => RendicionCuentasWidget(),
        ),
        FFRoute(
          name: 'rendicion2022PDF',
          path: '/rendicion2022PDF',
          builder: (context, params) => Rendicion2022PDFWidget(),
        ),
        FFRoute(
          name: 'rendicion2021PDF',
          path: '/rendicion2021PDF',
          builder: (context, params) => Rendicion2021PDFWidget(),
        ),
        FFRoute(
          name: 'rendicion2020PDF',
          path: '/rendicion2020PDF',
          builder: (context, params) => Rendicion2020PDFWidget(),
        ),
        FFRoute(
          name: 'rendicion2019PDF',
          path: '/rendicion2019PDF',
          builder: (context, params) => Rendicion2019PDFWidget(),
        ),
        FFRoute(
          name: 'rendicion2018PDF',
          path: '/rendicion2018PDF',
          builder: (context, params) => Rendicion2018PDFWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/ingreso';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
