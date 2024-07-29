// import 'package:flutter/material.dart';
// import 'package:flutter_highlight/flutter_highlight.dart';
// import 'package:flutter_highlight/themes/github.dart';
// import '../models/animation_info.dart';
// import '../widgets/animations/animation_demos.dart';

// class AnimationDetailScreen extends StatefulWidget {
//   final AnimationInfo animationInfo;

//   AnimationDetailScreen({required this.animationInfo});

//   @override
//   _AnimationDetailScreenState createState() => _AnimationDetailScreenState();
// }

// class _AnimationDetailScreenState extends State<AnimationDetailScreen>
//     with TickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     )..repeat(reverse: true);

//     _animation = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.animationInfo.name),
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildAnimationDemo(),
//               SizedBox(height: 24),
//               _buildInfoSection(
//                   'Description', widget.animationInfo.description),
//               SizedBox(height: 16),
//               _buildInfoSection('Complexity',
//                   widget.animationInfo.complexity.toString().split('.').last),
//               SizedBox(height: 16),
//               _buildInfoSection('Category', widget.animationInfo.category),
//               SizedBox(height: 24),
//               _buildCodeSection(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildAnimationDemo() {
//     return AnimationDemos.getDemo(
//         widget.animationInfo.name, _animation, _controller);
//   }

//   Widget _buildInfoSection(String title, String content) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 8),
//         Text(
//           content,
//           style: TextStyle(fontSize: 16),
//         ),
//       ],
//     );
//   }

//   Widget _buildCodeSection() {
//     String code = AnimationDemos.getCodeSample(widget.animationInfo.name);
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Code Sample',
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 8),
//         Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(color: Colors.grey),
//           ),
//           child: HighlightView(
//             code,
//             language: 'dart',
//             theme: githubTheme,
//             padding: EdgeInsets.all(12),
//             textStyle: TextStyle(fontSize: 14),
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import '../models/animation_info.dart';
import '../widgets/animations/animation_demos.dart';

class AnimationDetailScreen extends StatefulWidget {
  final AnimationInfo animationInfo;

  AnimationDetailScreen({required this.animationInfo});

  @override
  _AnimationDetailScreenState createState() => _AnimationDetailScreenState();
}

class _AnimationDetailScreenState extends State<AnimationDetailScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.animationInfo.name),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAnimationDemo(),
              SizedBox(height: 24),
              _buildInfoSection(
                  'Description', widget.animationInfo.description),
              SizedBox(height: 16),
              _buildInfoSection('Complexity',
                  widget.animationInfo.complexity.toString().split('.').last),
              SizedBox(height: 16),
              _buildInfoSection('Category', widget.animationInfo.category),
              SizedBox(height: 24),
              _buildCodeSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimationDemo() {
    return AnimationDemos.getDemo(
        widget.animationInfo.name, _animation, _controller);
  }

  Widget _buildInfoSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          content,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildCodeSection() {
    String code = AnimationDemos.getCodeSample(widget.animationInfo.name);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Code Sample',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          child: HighlightView(
            code,
            language: 'dart',
            theme: githubTheme,
            padding: EdgeInsets.all(12),
            textStyle: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
