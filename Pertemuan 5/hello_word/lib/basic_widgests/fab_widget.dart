// fab_widget.dart
import 'package:flutter/material.dart';

class MyFabWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const MyFabWidget({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed ?? () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('FAB ditekan!')),
        );
      },
      child: const Icon(Icons.thumb_up),
      backgroundColor: Colors.pink,
    );
  }
}