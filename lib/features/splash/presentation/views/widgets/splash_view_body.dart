import 'package:flutter/material.dart';
import '../../../../../core/manager/assets_manager.dart';
import '../../../../../core/manager/route_manager.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.pushNamed(
        context,
        AppRoutes.chooseAddressManuallyScreen,
      );




    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset.zero,
    ).animate(
      animationController,
    );

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Image.asset(
        //   // AssetsPaths.logo,
        //   // child: Image.asset(
        //     ImageAssetsManager.bazzokaLogo,
        //     // width: screenSize.width * .22,
        //   ),

        // ),
        SizedBox(
          // height: screenSize.height * .02,

          // height: 5.h,
        ),
        SlidingText(
          slidingAnimation: slidingAnimation,
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}
