import 'package:clean_arch/gen/assets.gen.dart';
import 'package:flutter/material.dart';
class ImageFade extends StatelessWidget {
  const ImageFade({
    super.key,
    required Animation<double> fadingAnimation,
  }) : _fadingAnimation = fadingAnimation;

  final Animation<double> _fadingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _fadingAnimation,
      builder: (context, _) => FadeTransition(
          opacity: _fadingAnimation,
          child: Assets.images.logo.image()),
    );
  }
}
