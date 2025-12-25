// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$mainNavigatorRoute];

RouteBase get $mainNavigatorRoute => ShellRouteData.$route(
  factory: $MainNavigatorRouteExtension._fromState,
  routes: [
    GoRouteData.$route(path: '/', factory: $HomeRoute._fromState),
    GoRouteData.$route(path: '/mall', factory: $MallRoute._fromState),
    GoRouteData.$route(path: '/discover', factory: $DiscoverRoute._fromState),
    GoRouteData.$route(path: '/inbox', factory: $InboxRoute._fromState),
    GoRouteData.$route(path: '/account', factory: $AccountRoute._fromState),
  ],
);

extension $MainNavigatorRouteExtension on MainNavigatorRoute {
  static MainNavigatorRoute _fromState(GoRouterState state) =>
      MainNavigatorRoute();
}

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $MallRoute on GoRouteData {
  static MallRoute _fromState(GoRouterState state) => MallRoute();

  @override
  String get location => GoRouteData.$location('/mall');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $DiscoverRoute on GoRouteData {
  static DiscoverRoute _fromState(GoRouterState state) => DiscoverRoute();

  @override
  String get location => GoRouteData.$location('/discover');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $InboxRoute on GoRouteData {
  static InboxRoute _fromState(GoRouterState state) => InboxRoute();

  @override
  String get location => GoRouteData.$location('/inbox');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AccountRoute on GoRouteData {
  static AccountRoute _fromState(GoRouterState state) => AccountRoute();

  @override
  String get location => GoRouteData.$location('/account');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
