import 'package:flutter/material.dart';
import '../models/animation_info.dart';

class AnimationListItem extends StatelessWidget {
  final AnimationInfo animationInfo;
  final VoidCallback onTap;

  AnimationListItem({required this.animationInfo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading:
            Icon(animationInfo.icon, color: Theme.of(context).primaryColor),
        title: Text(animationInfo.name,
            style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(animationInfo.category),
        trailing: _buildComplexityChip(),
        onTap: onTap,
      ),
    );
  }

  Widget _buildComplexityChip() {
    Color chipColor;
    switch (animationInfo.complexity) {
      case Complexity.easy:
        chipColor = Colors.green;
        break;
      case Complexity.medium:
        chipColor = Colors.orange;
        break;
      case Complexity.hard:
        chipColor = Colors.red;
        break;
    }

    return Chip(
      label: Text(
        animationInfo.complexity.toString().split('.').last,
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
      backgroundColor: chipColor,
    );
  }
}
