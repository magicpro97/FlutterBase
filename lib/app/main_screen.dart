import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../generated/l10n.dart';
import '../feature/feature1/navigation/route.dart';
import '../feature/feature2/navigation/route.dart';
import '../feature/feature3/navigation/route.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
    required this.location,
    required this.child,
  });

  final String location;
  final Widget child;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _currentIndex = 0;
  final _navigation = [
    Feature1Route.name,
    Feature2Route.name,
    Feature3Route.name,
  ];

  final _labelMap = {
    Feature1Route.path: S.current.feature_1,
    Feature2Route.path: S.current.feature_2,
    Feature3Route.path: S.current.feature_3,
  };

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    context.goNamed(
      _navigation[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(_labelMap[widget.location] ?? ''),
      ),
      body: Center(
        child: widget.child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
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
