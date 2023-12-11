import 'package:flutter/material.dart';

class Tag {
  // Ctor'da default değer
  const Tag(
      {required this.id, required this.name, this.color = Colors.orange});

  final String id;
  final String name;
  final Color color;
}