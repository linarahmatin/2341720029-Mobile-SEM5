import 'package:flutter/material.dart';
import 'navigation_second.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color backgroundColor = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Navigation First Screen - Sesy'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () async {
            final selectedColor = await Navigator.push<Color>(
              context,
              MaterialPageRoute(builder: (context) => const NavigationSecond()),
            );

            if (selectedColor != null) {
              setState(() {
                backgroundColor = selectedColor;
              });
            }
          },
        ),
      ),
    );
  }
}
