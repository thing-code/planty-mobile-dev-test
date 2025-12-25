import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planty_app/screens/screens.dart';
import 'package:planty_app/widgets/widgets.dart';

part 'router.g.dart';

@TypedShellRoute<MainNavigatorRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(path: '/'),
    TypedGoRoute<MallRoute>(path: '/mall'),
    TypedGoRoute<DiscoverRoute>(path: '/discover'),
    TypedGoRoute<InboxRoute>(path: '/inbox'),
    TypedGoRoute<AccountRoute>(path: '/account'),
  ],
)
class MainNavigatorRoute extends ShellRouteData {
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return NavigationWidget(navigator);
  }
}

class HomeRoute extends GoRouteData with $HomeRoute {
  HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomeScreen();
  }
}

class MallRoute extends GoRouteData with $MallRoute {
  MallRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MallScreen();
  }
}

class DiscoverRoute extends GoRouteData with $DiscoverRoute {
  DiscoverRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DiscoverScreen();
  }
}

class InboxRoute extends GoRouteData with $InboxRoute {
  InboxRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return InboxScreen();
  }
}

class AccountRoute extends GoRouteData with $AccountRoute {
  AccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AccountScreen();
  }
}

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: HomeRoute().location,
  routes: $appRoutes,
);
