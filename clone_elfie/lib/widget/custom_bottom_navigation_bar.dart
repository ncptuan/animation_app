import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../route/router.gr.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigationBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      height: 120,
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          switch (index) {
            case 0:
              context.router.replace(const HomeRoute());
              break;
            case 1:
              context.router.replace(const HealthRoute());
              break;
            case 2:
              context.router.replace(const MedsRoute());
              break;
            case 3:
              context.router.replace(const MapRoute());
              break;
            case 4:
              context.router.replace(const RewardRoute());
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety),
            label: 'Health',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Meds',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Reward',
          ),
        ],
        selectedItemColor: Colors.blue, // Set the color for the selected item
        unselectedItemColor: Colors.grey, // Set the color for unselected items
        backgroundColor: Colors.white, // Set the background color of the bar
      ),
    );
  }
}
