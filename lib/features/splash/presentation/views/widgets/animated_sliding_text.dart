import 'package:bookly_app/core/utils/app_size.dart';
import 'package:bookly_app/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class AnimatedSlidingText extends StatelessWidget {
  const AnimatedSlidingText({
    super.key,
    required this.animation,
  });

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => SlideTransition(
        position: animation,
        child: const Text(
          AppString.splashWelcomeText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: AppSize.f18,
          ),
        ),
      ),
    );
  }
}
