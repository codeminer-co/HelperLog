import 'package:flutter/material.dart';
import 'package:helperlog/utils/constants.dart';
import 'package:helperlog/view/add_manifest.dart';
import 'package:helperlog/view/home_screen.dart';
import 'package:helperlog/view/setting_screen.dart';

import 'package:helperlog/view/tracking_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
//   @override
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const Home(),
      const AddManifest(),
      const TrackingScreen(),
      const Settings(),
    ];
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: BottomNavigationBar(
            backgroundColor: AppColors.appColor,
            unselectedItemColor: AppColors.whiteColor,
            items: <BottomNavigationBarItem>[
              bottomNavBarItems(Icons.home, "Home", AppColors.whiteColor),
              bottomNavBarItems(
                  Icons.add, "Add Manifest", AppColors.whiteColor),
              bottomNavBarItems(
                  Icons.fire_truck, "Track", AppColors.whiteColor),
              bottomNavBarItems(
                  Icons.settings, "Setting", AppColors.whiteColor),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: AppColors.whiteColor,
            iconSize: 30,
            onTap: _onItemTapped,
            elevation: 5),
      ),
    );
  }

  BottomNavigationBarItem bottomNavBarItems(
      IconData icon, String label, Color color) {
    return BottomNavigationBarItem(
        icon: Icon(icon), label: label, backgroundColor: color);
  }
}
