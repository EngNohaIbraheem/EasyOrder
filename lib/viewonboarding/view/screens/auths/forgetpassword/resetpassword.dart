
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../widgets/auth/custombuttonauth.dart';
import '../../../widgets/auth/customtextbodyauth.dart';
import '../../../widgets/auth/customtexttitileauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ResetPasswordControllerImp controller =
    //     Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Forget Password',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check Email"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
              "Sign Up With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          // CustonTextFormAuth(
          //   mycontroller: controller.email,
          //   hinttext: "Enter Your Email",
          //   iconData: Icons.email_outlined,
          //   labeltext: "Email",
          //   // mycontroller: ,
          // ),
          CustomButtomAuth(text: "Check", onPressed: () {}),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}