import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '../flutter_flow_theme.dart';
import '/backend/backend.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => HomePageWidget(),
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
          name: 'PuntosdeServicioSedes',
          path: '/puntosdeServicioSedes',
          builder: (context, params) => PuntosdeServicioSedesWidget(),
        ),
        FFRoute(
          name: 'Comentarios',
          path: '/comentarios',
          builder: (context, params) => ComentariosWidget(),
        ),
        FFRoute(
          name: 'Nosotros',
          path: '/nosotros',
          builder: (context, params) => NosotrosWidget(),
        ),
        FFRoute(
          name: 'gobiernoCorporativo',
          path: '/gobiernoCorporativo',
          builder: (context, params) => GobiernoCorporativoWidget(),
        ),
        FFRoute(
          name: 'historia',
          path: '/historia',
          builder: (context, params) => HistoriaWidget(),
        ),
        FFRoute(
          name: 'transparencia',
          path: '/transparencia',
          builder: (context, params) => TransparenciaWidget(),
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
          name: 'ReservaCita',
          path: '/reservaCita',
          builder: (context, params) => ReservaCitaWidget(),
        ),
        FFRoute(
          name: 'horariosDisponibles',
          path: '/horariosDisponibles',
          builder: (context, params) => HorariosDisponiblesWidget(),
        ),
        FFRoute(
          name: 'Confirmacion',
          path: '/confirmacion',
          builder: (context, params) => ConfirmacionWidget(),
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
          name: 'Sedes',
          path: '/sedes',
          builder: (context, params) => SedesWidget(),
        ),
        FFRoute(
          name: 'ServiciosP',
          path: '/serviciosP',
          builder: (context, params) => ServiciosPWidget(),
        ),
        FFRoute(
          name: 'centrosGestion',
          path: '/centrosGestion',
          builder: (context, params) => CentrosGestionWidget(),
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
          name: 'HomePageCopy',
          path: '/homePageCopy',
          builder: (context, params) => HomePageCopyWidget(),
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
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

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
