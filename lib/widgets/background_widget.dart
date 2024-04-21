import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.child, required this.imagePath});
  final Widget child;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(imagePath),
        SafeArea(child: child),
      ],
    );
  }
}
