import 'package:flutter/material.dart';

class ParallaxScrollEffect extends StatelessWidget {
  final List<String> images = List.generate(
      10, (index) => 'https://picsum.photos/id/${index + 1}/500/300');

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
                    alignment: const Alignment(0, -0.3),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Text(
                    'Item $index',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
