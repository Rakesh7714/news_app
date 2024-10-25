
part of 'router_imports.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

 @override
 List<AutoRoute> get routes => [
  AutoRoute(page: SplashRoute.page,initial: true),
  AutoRoute(page:OnBoardRoute.page)
 ];
}