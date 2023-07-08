// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
      $unAuthPageRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'book/:id',
          factory: $BookPageRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'listening',
              factory: $ListeningPageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BookPageRouteExtension on BookPageRoute {
  static BookPageRoute _fromState(GoRouterState state) => BookPageRoute(
        state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/book/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ListeningPageRouteExtension on ListeningPageRoute {
  static ListeningPageRoute _fromState(GoRouterState state) =>
      ListeningPageRoute(
        state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/book/${Uri.encodeComponent(id)}/listening',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $unAuthPageRoute => GoRouteData.$route(
      path: '/unauth',
      factory: $UnAuthPageRouteExtension._fromState,
    );

extension $UnAuthPageRouteExtension on UnAuthPageRoute {
  static UnAuthPageRoute _fromState(GoRouterState state) => UnAuthPageRoute();

  String get location => GoRouteData.$location(
        '/unauth',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
