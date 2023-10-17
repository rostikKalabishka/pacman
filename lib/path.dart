import 'package:flutter/material.dart';

class MyPath extends StatelessWidget {
  // final Widget child;
  final innerColor;
  final color;
  const MyPath(
      {super.key,
      // required this.child,
      required this.innerColor,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Container(
            padding: const EdgeInsets.all(12),
            color: color,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: innerColor,
                // child: Center(child: child),
              ),
            ),
          ),
        ));
  }
}
