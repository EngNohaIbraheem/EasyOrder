
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllar/auth/checkemail_controller.dart';
import '../../../core/constant/color.dart';
import '../../widgets/auth/custombuttonauth.dart';
import '../../widgets/auth/customtextbodyauth.dart';
import '../../widgets/auth/customtextformauth.dart';
import '../../widgets/auth/customtexttitileauth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller =
    Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('27'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          CustomTextTitleAuth(text: "28".tr),
          const SizedBox(height: 10),
          CustomTextBodyAuth(
              text:
              "29".tr),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            isNumber: false,
            valid: (val) {},
            mycontroller: controller.email,
            hinttext: "12".tr,
            iconData: Icons.email_outlined,
            labeltext: "18".tr,
            // mycontroller: ,
          ),
          CustomButtomAuth(text: "30".tr, onPressed: () {
            controller.goToVerfiyCode() ;
          }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}






