import 'package:flutter/material.dart';
import 'package:scrollable_widgets/layout/main_layout.dart';
import 'package:scrollable_widgets/screen/tabBar/appbar_using_controller.dart';
import 'package:scrollable_widgets/screen/tabBar/basic_tab_bar_screen.dart';
import 'package:scrollable_widgets/screen/tabBar/bottom_navigation_bar_screen.dart';

class TabBarHome extends StatelessWidget {
  const TabBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: 'TabBarHome',
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BasicAppbarTabbarScreen(),
                      )),
                  child: const Text('Basic AppBar TabBar Screen')),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AppBarUsingController(),
                      )),
                  child: const Text('AppBarUsingController')),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BottomNavigationBarScreen(),
                      )),
                  child: const Text('BottomNavigationBarScreen')),
            ],
          ),
        ));
  }
}
