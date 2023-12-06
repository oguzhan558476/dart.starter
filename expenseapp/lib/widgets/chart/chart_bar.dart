import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({Key? key, required this.height}) : super(key: key);
  
  final double height;

  @override
  Widget build(BuildContext context) {
    Color customBarColor = const Color(0xFF7C93C3); // Özel renk kodu

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: FractionallySizedBox(
          heightFactor: height,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: customBarColor, // Özel renk kodunu burada kullandık
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            ),
            // Diğer Widget'lar buraya gelebilir
          ),
        ),
      ),
    );
  }
}