import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: PersistentNavigationRoute.page,
            initial: true,
            children: [
              AutoRoute(page: HomeRoute.page),
              AutoRoute(page: HealthRoute.page),
              AutoRoute(page: MedsRoute.page),
              AutoRoute(page: MapRoute.page),
              AutoRoute(page: RewardRoute.page),
            ]),
      ];
}
