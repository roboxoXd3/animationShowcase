import 'package:flutter/material.dart';

class StaggeredListAnimation extends StatefulWidget {
  @override
  _StaggeredListAnimationState createState() => _StaggeredListAnimationState();
}

class _StaggeredListAnimationState extends State<StaggeredListAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              final delay = index * 0.2;
              final animation = Tween(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(
                  parent: _controller,
                  curve: Interval(delay, delay + 0.5, curve: Curves.easeOut),
                ),
              );
              return Opacity(
                opacity: animation.value,
                child: Transform.translate(
                  offset: Offset(0, 50 * (1 - animation.value)),
                  child: child,
                ),
              );
            },
            child: ListTile(title: Text('Item $index')),
          );
        },
      ),
    );
  }
}
