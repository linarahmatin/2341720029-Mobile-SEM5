import 'package:flutter/material.dart';

class NavigationSecond extends StatelessWidget {
  const NavigationSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen - Sesy'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Red'),
              onPressed: () => Navigator.pop(context, Colors.red.shade700),
            ),
            ElevatedButton(
              child: const Text('Green'),
              onPressed: () => Navigator.pop(context, Colors.green.shade700),
            ),
            ElevatedButton(
              child: const Text('Blue'),
              onPressed: () => Navigator.pop(context, Colors.blue.shade700),
            ),
          ],
        ),
      ),
    );
  }
}
