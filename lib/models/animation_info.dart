import 'package:flutter/material.dart';

class AnimationInfo {
  final String name;
  final Complexity complexity;
  final String description;
  final String category;
  final IconData icon;

  AnimationInfo({
    required this.name,
    required this.complexity,
    required this.description,
    required this.category,
    required this.icon,
  });
}

enum Complexity { easy, medium, hard }
