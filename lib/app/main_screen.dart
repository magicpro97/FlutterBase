import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../generated/l10n.dart';

final _labelMap = {
  0: S.current.feature_1,
  1: S.current.feature_2,
  2: S.current.feature_3,
};

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(_labelMap[navigationShell.currentIndex] ?? ''),
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
