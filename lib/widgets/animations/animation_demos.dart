import 'package:flutter/material.dart';
import 'staggered_list_animation.dart';
import 'animated_bottom_nav_bar.dart';
import 'parallax_scroll_effect.dart';
import 'particle_animation_system.dart';

class AnimationDemos {
  static Widget getDemo(String animationName, Animation<double> animation,
      AnimationController controller) {
    switch (animationName) {
      case 'Fade Transition':
        return FadeTransition(
          opacity: animation,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
                child: Text('Fade Me', style: TextStyle(color: Colors.white))),
          ),
        );
      case 'Scale Transition':
        return ScaleTransition(
          scale: animation,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
            child: Center(
                child: Text('Scale Me', style: TextStyle(color: Colors.white))),
          ),
        );
      case 'Slide Transition':
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(-1, 0),
            end: Offset(1, 0),
          ).animate(animation),
          child: Container(
            width: 200,
            height: 100,
            color: Colors.red,
            child: Center(
                child: Text('Slide Me', style: TextStyle(color: Colors.white))),
          ),
        );
      case 'Rotation Transition':
        return RotationTransition(
          turns: animation,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.purple,
            child: Center(
                child:
                    Text('Rotate Me', style: TextStyle(color: Colors.white))),
          ),
        );
      case 'Size Transition':
        return Center(
          child: SizeTransition(
            sizeFactor: animation,
            axis: Axis.horizontal,
            axisAlignment: -1,
            child: Container(
              width: 200,
              height: 100,
              color: Colors.orange,
              child: Center(
                  child:
                      Text('Size Me', style: TextStyle(color: Colors.white))),
            ),
          ),
        );
      case 'Animated Container':
        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Container(
              width: 200 + 50 * animation.value,
              height: 200 + 50 * animation.value,
              color: Color.lerp(Colors.blue, Colors.red, animation.value),
              child: Center(
                  child: Text('Animate Me',
                      style: TextStyle(color: Colors.white))),
            );
          },
        );
      case 'Staggered List Animation':
        return StaggeredListAnimation();
      case 'Animated Page Route':
        return ElevatedButton(
          child: Text('Open New Page'),
          onPressed: () {
            // This is just a placeholder. In a real app, you'd implement the navigation here.
            print('Animated Page Route button pressed');
          },
        );
      case 'Animated Bottom Navigation Bar':
        return AnimatedBottomNavBar();
      case 'Parallax Scroll Effect':
        return ParallaxScrollEffect();
      case 'Particle Animation System':
        return ParticleAnimationSystem(controller: controller);
      default:
        return Container(
          width: 200,
          height: 200,
          color: Colors.grey,
          child: Center(child: Text('No Animation')),
        );
    }
  }

//   static String getCodeSample(String animationName) {
//     switch (animationName) {
//       case 'Fade Transition':
//         return '''
// FadeTransition(
//   opacity: animation,
//   child: Container(
//     width: 200,
//     height: 200,
//     color: Colors.blue,
//     child: Center(
//       child: Text('Fade Me', style: TextStyle(color: Colors.white)),
//     ),
//   ),
// )''';
//       case 'Scale Transition':
//         return '''
// ScaleTransition(
//   scale: animation,
//   child: Container(
//     width: 200,
//     height: 200,
//     color: Colors.green,
//     child: Center(
//       child: Text('Scale Me', style: TextStyle(color: Colors.white)),
//     ),
//   ),
// )''';
//       case 'Slide Transition':
//         return '''
// SlideTransition(
//   position: Tween<Offset>(
//     begin: Offset(-1, 0),
//     end: Offset(1, 0),
//   ).animate(animation),
//   child: Container(
//     width: 200,
//     height: 100,
//     color: Colors.red,
//     child: Center(
//       child: Text('Slide Me', style: TextStyle(color: Colors.white)),
//     ),
//   ),
// )''';
//       // Add code samples for other animations here...
//       default:
//         return '// Code sample not available';
//     }
//   }

  static String getCodeSample(String animationName) {
    switch (animationName) {
      case 'Fade Transition':
        return '''
FadeTransition(
  opacity: animation,
  child: Container(
    width: 200,
    height: 200,
    color: Colors.blue,
    child: Center(
      child: Text('Fade Me', style: TextStyle(color: Colors.white)),
    ),
  ),
)''';

      case 'Scale Transition':
        return '''
ScaleTransition(
  scale: animation,
  child: Container(
    width: 200,
    height: 200,
    color: Colors.green,
    child: Center(
      child: Text('Scale Me', style: TextStyle(color: Colors.white)),
    ),
  ),
)''';

      case 'Slide Transition':
        return '''
SlideTransition(
  position: Tween<Offset>(
    begin: Offset(-1, 0),
    end: Offset(1, 0),
  ).animate(animation),
  child: Container(
    width: 200,
    height: 100,
    color: Colors.red,
    child: Center(
      child: Text('Slide Me', style: TextStyle(color: Colors.white)),
    ),
  ),
)''';

      case 'Rotation Transition':
        return '''
RotationTransition(
  turns: animation,
  child: Container(
    width: 200,
    height: 200,
    color: Colors.purple,
    child: Center(
      child: Text('Rotate Me', style: TextStyle(color: Colors.white)),
    ),
  ),
)''';

      case 'Size Transition':
        return '''
Center(
  child: SizeTransition(
    sizeFactor: animation,
    axis: Axis.horizontal,
    axisAlignment: -1,
    child: Container(
      width: 200,
      height: 100,
      color: Colors.orange,
      child: Center(
        child: Text('Size Me', style: TextStyle(color: Colors.white)),
      ),
    ),
  ),
)''';

      case 'Animated Container':
        return '''
AnimatedBuilder(
  animation: animation,
  builder: (context, child) {
    return Container(
      width: 200 + 50 * animation.value,
      height: 200 + 50 * animation.value,
      color: Color.lerp(Colors.blue, Colors.red, animation.value),
      child: Center(
        child: Text('Animate Me', style: TextStyle(color: Colors.white)),
      ),
    );
  },
)''';

      case 'Staggered List Animation':
        return '''
ListView.builder(
  itemCount: 5,
  itemBuilder: (context, index) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final delay = index * 0.2;
        final animation = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
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
      child: ListTile(title: Text('Item \$index')),
    );
  },
)''';

      case 'Animated Page Route':
        return '''
Navigator.of(context).push(
  PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => NewPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  ),
);''';

      case 'Animated Bottom Navigation Bar':
        return '''
class AnimatedBottomNavBar extends StatefulWidget {
  @override
  _AnimatedBottomNavBarState createState() => _AnimatedBottomNavBarState();
}

class _AnimatedBottomNavBarState extends State<AnimatedBottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, 'Home', 0),
          _buildNavItem(Icons.search, 'Search', 1),
          _buildNavItem(Icons.person, 'Profile', 2),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(icon, color: _selectedIndex == index ? Colors.white : Colors.black),
            if (_selectedIndex == index) SizedBox(width: 8),
            if (_selectedIndex == index) Text(label, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}''';

      case 'Parallax Scroll Effect':
        return '''
class ParallaxScrollEffect extends StatelessWidget {
  final List<String> images = List.generate(
      10, (index) => 'https://picsum.photos/id/\${index + 1}/500/300');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            width: 300,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.network(
                    images[index],
                    fit: BoxFit.cover,
                    alignment: Alignment(0, -0.3),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Text(
                    "Item \$index",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}''';

      case 'Particle Animation System':
        return '''
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
        paint
      );
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
}''';

      default:
        return '// Code sample not available for this animation';
    }
  }
}
