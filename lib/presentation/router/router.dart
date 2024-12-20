part of 'router_imports.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnBoardRoute.page),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: Register.page),
        AutoRoute(page: Login.page),
        AutoRoute(page: General.page),
        AutoRoute(page: HomeDetailsRoute.page)
      ];
}
