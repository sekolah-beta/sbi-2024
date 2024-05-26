import 'package:flutter/material.dart';

class ExplicitAnimationScreen extends StatefulWidget {
  const ExplicitAnimationScreen({super.key});

  @override
  State<ExplicitAnimationScreen> createState() =>
      _ExplicitAnimationScreenState();
}

class _ExplicitAnimationScreenState extends State<ExplicitAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
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
        title: const Text('Explicit Animation'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFFda1e3d),
      ),
      backgroundColor: const Color(0xFFda1e3d),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
          ),
          builder: (context, child) {
            return Transform.rotate(
              angle: _animation.value * 2.0 * 3.141592653589793,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
