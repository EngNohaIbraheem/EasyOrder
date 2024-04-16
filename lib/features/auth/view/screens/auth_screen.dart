import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/manager/assets_manager.dart';
import '../../../../core/manager/route_manager.dart';
import '../../../../core/shared/widgets/custom_button_with_preicon.dart';
import '../../../../core/styles/app_color.dart';
import '../../../../core/styles/app_font.dart';


class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * .04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenSize.height * .05,
              ),
              Text(
                'EasyOrder',
                style: AppFont.getTitleLargeFont(
                  context,
                  fontColor: AppColor.primary,
                  fontSize: 45,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'You on the  right away',
                style: AppFont.getCaptionFont(
                  context,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: screenSize.height * .15,
              ),
              Text(
                'Login or create an account',
                style: AppFont.getSubtitle1(
                  context,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              SizedBox(
                child: Text(
                  'Receive rewards and save your details for a faster checkout experience.',
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  style: AppFont.getMediumFont(
                    context,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * .03,
              ),
              CustomButtonWithPreIcon(
                text: 'Continue with google',
                icon: IconAssetsManager.googleIcon,
              ),
              SizedBox(
                height: screenSize.height * .015,
              ),
              CustomButtonWithPreIcon(
                text: 'Continue with facebook',
                icon: IconAssetsManager.facebookIcon,
              ),
              SizedBox(
                height: screenSize.height * .015,
              ),
              CustomButtonWithPreIcon(
                text: 'Continue with apple',
                icon: IconAssetsManager.appleIcon,
              ),
              SizedBox(
                height: screenSize.height * .015,
              ),
              CustomButtonWithPreIcon(
                text: 'Continue with email',
                icon: IconAssetsManager.emailIcon,
                iconColor: AppColor.primary,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.loginWithEmailScreen,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
