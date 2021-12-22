import 'package:carappui/UI/custom_widgets/general_button.dart';
import 'package:carappui/UI/custom_widgets/general_textinput.dart';
import 'package:carappui/UI/custom_widgets/siginIn/customebutton.dart';
import 'package:carappui/UI/screens/signin_screen.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passController = TextEditingController();

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 310.h,
                width: 1.sw,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 80.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            "Forget Password",
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.to(SignInScreen());
                            },
                            child: ImageIcon(
                              AssetImage("assets/icons/cross.png"),
                              color: whiteColor,
                              size: 25.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              height: 200.h,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 4,
                    blurRadius: 5,
                    offset: Offset(1, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  GeneralTextField(
                    hintText: 'Email',
                    loginTextController: emailController,
                    trailingIcon: "assets/icons/email.svg",
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  SignInbutton(
                    buttonBackgroungColor: baseColor,
                    centerText: "Continue",
                    textColor: whiteColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
