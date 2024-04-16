
import 'package:flutter/material.dart';

import '../../../../core/manager/assets_manager.dart';
import '../../../../core/manager/route_manager.dart';
import '../../../../core/styles/app_color.dart';
import '../../../../core/styles/app_font.dart';


class CustomAppBarSectionHomeScreen extends StatelessWidget {
  const CustomAppBarSectionHomeScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        Container(
          color: AppColor.primaryLight,
          width: double.infinity,
          height: screenSize.height / 3.9,
        ),
        SizedBox(
          height: screenSize.height / 3.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: screenSize.width * .04,
                    top: screenSize.height * .02,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivering to',
                        style: AppFont.getCaptionFont(
                          context,
                          fontColor: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Al Teseen el ganoby Street',
                            style: AppFont.getLabelFont(
                              context,
                              fontColor: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down_rounded,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenSize.height * .03,
                      ),
                      Text(
                        'Welcome !',
                        style: AppFont.getTitleSmallFont(
                          context,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * .008,
                      ),
                      Text(
                        'Log in or  create an account  ',
                            // 'we are all in your service ',
                        maxLines: 3,
                        style: AppFont.getCaptionFont(
                          context,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * .01,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.authScreen,
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Text(
                            'Order ',
                            style: AppFont.getCaptionFont(
                              context,
                              fontColor: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      ImageAssetsManager.backgroundHomeScreen,

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
