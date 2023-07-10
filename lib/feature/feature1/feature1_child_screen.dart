import 'package:flutter/material.dart';

class Feature1ChildScreen extends StatelessWidget {
  const Feature1ChildScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Feature 1 Child'),
      ),
    );
  }
}
