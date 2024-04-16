import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllar/obboarding_controller.dart';
import '../widgets/onboaeding/custombutton.dart';
import '../widgets/onboaeding/customslider.dart';
import '../widgets/onboaeding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp()) ;
    return
      // SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      // child:
    Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(children: [
              const Expanded(
                flex: 3,
                child: CustomSliderOnBoarding(),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      CustomDotControllerOnBoarding(),
                      Spacer(flex: 2),
                      CustomButtonOnBoarding()
                    ],
                  ))
            ]),
          ));
    // );
  }
}