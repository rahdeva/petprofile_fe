import 'package:auto_route/auto_route.dart';
import 'package:petprofile_fe/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: DetailRoute.page),
  ];
}