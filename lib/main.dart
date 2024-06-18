import 'package:flutter/material.dart';

import 'main_screen.dart';

void main() {
  runApp(CashTracker());
}

class CashTracker extends StatelessWidget {
  const CashTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
