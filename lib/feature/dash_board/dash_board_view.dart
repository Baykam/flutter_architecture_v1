import 'package:architecture_template/product/navigation/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TabNavigationView extends StatelessWidget {
  const TabNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeAutoRouterRoute(),
        FavoriteAutoRouterRoute(),
        ProfileAutoRouterRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) => Scaffold(
        body: child,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: AutoTabsRouter.of(context).activeIndex,
          onTap: (newIndex) =>
              AutoTabsRouter.of(context).setActiveIndex(newIndex),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.abc_sharp,
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.abc_sharp,
                ),
                label: "favorite"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.abc_sharp,
                ),
                label: "profile"),
          ],
        ),
      ),
    );
  }
}

@RoutePage()
class HomeAutoRouterView extends StatelessWidget {
  const HomeAutoRouterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class ProfileAutoRouterView extends StatelessWidget {
  const ProfileAutoRouterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class FavoriteAutoRouterView extends StatelessWidget {
  const FavoriteAutoRouterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
