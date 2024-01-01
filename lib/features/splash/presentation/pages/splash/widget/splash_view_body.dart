import 'package:clean_arch/constants.dart';
import 'package:clean_arch/features/home/presentation/pages/home/home_view.dart';
import 'package:clean_arch/features/splash/presentation/pages/splash/widget/image_fade.dart';
import 'package:clean_arch/features/splash/presentation/pages/splash/widget/slide_text.dart';
import 'package:clean_arch/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationSlidingController;
  late Animation<Offset> _slidingAnimation;
  late Animation<double> _fadingAnimation;

  @override
  void initState() {
    super.initState();
    initSliding();
    initFading();
    startAnimation();
    navHome();
  }



  @override
  void dispose() {
    // TODO: implement dispose
    _animationSlidingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ImageFade(fadingAnimation: _fadingAnimation),
        SlideText(slidingAnimation: _slidingAnimation),
      ],
    );
  }

  void initSliding() {
    _animationSlidingController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 20), end: Offset.zero)
            .animate(_animationSlidingController);
  }

  void initFading() {
    _fadingAnimation = Tween<double>(begin: 0.1, end: 1.0)
        .animate(_animationSlidingController);
  }

  void navHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(const HomeView(),
          duration: kTransactionDuration, transition: Transition.fade);
    });
  }
  void startAnimation(){
    _animationSlidingController.forward();
  }
}
