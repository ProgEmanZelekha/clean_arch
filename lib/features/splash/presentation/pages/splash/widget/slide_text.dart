
import 'package:flutter/material.dart';
class SlideText extends StatelessWidget {
  const SlideText({
    super.key,
    required Animation<Offset> slidingAnimation,
  }) : _slidingAnimation = slidingAnimation;

  final Animation<Offset> _slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _slidingAnimation,
      builder:(context,_)=> SlideTransition(
        position: _slidingAnimation,
        child: const Text(
          "Read Free Books",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
