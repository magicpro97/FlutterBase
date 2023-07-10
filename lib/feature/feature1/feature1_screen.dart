import 'package:base_flutter/feature/feature1/navigation/route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Feature1Screen extends StatelessWidget {
  const Feature1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text('Feature 1'),
        ElevatedButton(
          onPressed: () => context.goNamed(Feature1Route.feature1childName),
          child: const Text('Go to Feature 1 Child'),
        ),
      ],
    );
  }
}
