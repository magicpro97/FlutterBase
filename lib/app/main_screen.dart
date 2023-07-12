import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../generated/l10n.dart';
import '../feature/feature1/navigation/route.dart';
import '../feature/feature2/navigation/route.dart';
import '../feature/feature3/navigation/route.dart';

final _labelMap = {
  Feature1Route.path: S.current.feature_1,
  Feature2Route.path: S.current.feature_2,
  Feature3Route.path: S.current.feature_3,
};

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
    required this.location,
    required this.navigationShell,
  });

  final String location;
  final StatefulNavigationShell navigationShell;

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(_labelMap[location] ?? ''),
      ),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => _onTap(context, index),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: S.current.feature_1,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: S.current.feature_2,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: S.current.feature_3,
          ),
        ],
      ),
    );
  }
}
