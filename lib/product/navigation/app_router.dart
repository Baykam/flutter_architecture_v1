import 'package:architecture_template/product/navigation/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')

///Project navigation structure with auto router
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: TabNavigationRoute.page,
          path: '/navigation',
          initial: true,
          // usesPathAsKey: true,
          children: [
            AutoRoute(
              page: HomeAutoRouterRoute.page,
              initial: true,
              path: 'home',
              children: [
                RedirectRoute(
                  path: '',
                  redirectTo: 'homeRoute',
                ),
                AutoRoute(
                  page: HomeRoute.page,
                  initial: true,
                  path: 'homeRoute',
                  maintainState: true,
                ),
                AutoRoute(
                  page: HomeDetailRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: FavoriteAutoRouterRoute.page,
              children: [
                AutoRoute(
                  page: FavoriteRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: ProfileAutoRouterRoute.page,
              // usesPathAsKey: true,
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  initial: true,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(page: AuthRoute.page)
      ];
}
