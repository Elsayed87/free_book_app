import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/app_size.dart';
import 'package:bookly_app/core/utils/app_string.dart';
import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/animated_sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();

    initAnimationController();

    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppString.logoPath),
        const SizedBox(
          height: AppSize.h5,
        ),
        AnimatedSlidingText(animation: animation)
      ],
    );
  }

  void initAnimationController() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    animation = Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() => const HomeView(),
      //     duration: kSplashTransitionToHomeView,
      //      transition: Transition.fade);
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
