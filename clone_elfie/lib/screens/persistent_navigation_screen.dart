import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../route/router.gr.dart';
import '../style/style.dart'; // Import your generated routes

@RoutePage()
class PersistentNavigationScreen extends StatefulWidget {
  const PersistentNavigationScreen({super.key});

  @override
  State<PersistentNavigationScreen> createState() =>
      _PersistentNavigationScreenState();
}

class _PersistentNavigationScreenState
    extends State<PersistentNavigationScreen> {
  final List<PageRouteInfo> _routes = [
    const HomeRoute(),
    const HealthRoute(),
    const MedsRoute(),
    const MapRoute(),
    const RewardRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _routes,
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            if (tabsRouter.activeIndex != index) {
              tabsRouter.setActiveIndex(index);
            }
          },
          items: [
            _buildBarItem(
              Icons.home,
              'Home',
              tabsRouter.activeIndex == 0,
            ),
            _buildBarItem(
              Icons.health_and_safety,
              'Health',
              tabsRouter.activeIndex == 1,
            ),
            _buildBarItem(
              Icons.medical_services,
              'Meds',
              tabsRouter.activeIndex == 2,
            ),
            _buildBarItem(
              Icons.map,
              'Map',
              tabsRouter.activeIndex == 3,
            ),
            _buildBarItem(
              Icons.card_giftcard,
              'Reward',
              tabsRouter.activeIndex == 4,
            ),
          ],
          selectedItemColor: MyColors.primaryColor,
          unselectedItemColor: MyColors.blackColor,
          backgroundColor: MyColors.whiteColor,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: true,
        );
      },
    );
  }

  BottomNavigationBarItem _buildBarItem(
      IconData icon, String label, bool isSelected) {
    return BottomNavigationBarItem(
      icon: isSelected
          ? Container(
              decoration: BoxDecoration(
                color: MyColors.primaryColor.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8),
              child: Icon(icon, size: 40),
            )
          : Icon(icon),
      label: label,
    );
  }
}
