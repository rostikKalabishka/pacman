import 'package:flutter/material.dart';

class Pixel extends StatelessWidget {
  final Widget child;
  final innerColor;
  final color;
  const Pixel(
      {super.key,
      required this.child,
      required this.innerColor,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Container(
            color: color,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  color: innerColor,
                  child: child,
                ),
              ),
            ),
          ),
        ));
  }
}
