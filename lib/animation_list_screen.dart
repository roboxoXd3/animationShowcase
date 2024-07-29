import 'package:flutter/material.dart';
import '../models/animation_info.dart';
import '../widgets/animation_list_item.dart';
import 'animation_detail_screen.dart';

class AnimationListScreen extends StatelessWidget {
  final List<AnimationInfo> animations = [
    AnimationInfo(
      name: 'Fade Transition',
      complexity: Complexity.easy,
      description: 'Fades a widget in or out.',
      category: 'Opacity',
      icon: Icons.opacity,
    ),
    AnimationInfo(
      name: 'Scale Transition',
      complexity: Complexity.easy,
      description: 'Scales a widget larger or smaller.',
      category: 'Size',
      icon: Icons.zoom_in,
    ),
    AnimationInfo(
      name: 'Slide Transition',
      complexity: Complexity.easy,
      description: 'Slides a widget in from a direction.',
      category: 'Position',
      icon: Icons.arrow_right_alt,
    ),
    AnimationInfo(
      name: 'Rotation Transition',
      complexity: Complexity.easy,
      description: 'Rotates a widget.',
      category: 'Transformation',
      icon: Icons.rotate_right,
    ),
    AnimationInfo(
      name: 'Size Transition',
      complexity: Complexity.medium,
      description: 'Animates the size of a widget.',
      category: 'Size',
      icon: Icons.aspect_ratio,
    ),
    AnimationInfo(
      name: 'Animated Container',
      complexity: Complexity.medium,
      description: 'Animates container properties implicitly.',
      category: 'Implicit',
      icon: Icons.animation,
    ),
    AnimationInfo(
      name: 'Staggered List Animation',
      complexity: Complexity.hard,
      description: 'Animates list items with a staggered effect.',
      category: 'List',
      icon: Icons.list,
    ),
    AnimationInfo(
      name: 'Animated Page Route',
      complexity: Complexity.medium,
      description: 'Creates a custom animation for page transitions.',
      category: 'Navigation',
      icon: Icons.pageview,
    ),
    AnimationInfo(
      name: 'Animated Bottom Navigation Bar',
      complexity: Complexity.medium,
      description: 'Implements an interactive, animated navigation bar.',
      category: 'Navigation',
      icon: Icons.menu,
    ),
    AnimationInfo(
      name: 'Parallax Scroll Effect',
      complexity: Complexity.hard,
      description: 'Creates a depth effect in scrollable content.',
      category: 'Scrolling',
      icon: Icons.layers,
    ),
    AnimationInfo(
      name: 'Particle Animation System',
      complexity: Complexity.hard,
      description: 'Creates a system of animated particles.',
      category: 'Custom',
      icon: Icons.bubble_chart,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Showcase'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: animations.length,
        itemBuilder: (context, index) {
          return AnimationListItem(
            animationInfo: animations[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      AnimationDetailScreen(animationInfo: animations[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
