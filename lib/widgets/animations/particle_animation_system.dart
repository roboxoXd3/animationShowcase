import 'package:flutter/material.dart';
import 'dart:math' as math;

class ParticleAnimationSystem extends StatelessWidget {
  final AnimationController controller;

  ParticleAnimationSystem({required this.controller});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return CustomPaint(
          painter: ParticlePainter(animation: controller),
          child: Container(width: 300, height: 300),
        );
      },
    );
  }
}

class ParticlePainter extends CustomPainter {
  final Animation<double> animation;
  final List<Particle> particles = List.generate(50, (index) => Particle());

  ParticlePainter({required this.animation}) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.blue;
    particles.forEach((particle) {
      particle.update(animation.value);
      canvas.drawCircle(
          Offset(particle.x * size.width, particle.y * size.height),
          particle.radius,
          paint);
    });
  }

  @override
  bool shouldRepaint(ParticlePainter oldDelegate) => true;
}

class Particle {
  double x = math.Random().nextDouble();
  double y = math.Random().nextDouble();
  double radius = math.Random().nextDouble() * 2 + 1;
  double speed = math.Random().nextDouble() * 0.2 + 0.1;

  void update(double t) {
    y += speed * t;
    if (y > 1) {
      y = 0;
      x = math.Random().nextDouble();
    }
  }
}
