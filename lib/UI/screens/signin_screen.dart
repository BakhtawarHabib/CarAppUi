import 'package:carappui/UI/custom_widgets/general_button.dart';
import 'package:carappui/UI/custom_widgets/general_textinput.dart';
import 'package:carappui/UI/custom_widgets/siginIn/customebutton.dart';
import 'package:carappui/UI/screens/custom_bottom.dart';
import 'package:carappui/UI/screens/forget_password.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passController = TextEditingController();

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 0.37.sh,
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
                            "Sign In",
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 25.sp,
                            ),
                          ),
                          Spacer(),
                          ImageIcon(
                            AssetImage("assets/icons/cross.png"),
                            color: whiteColor,
                            size: 25.sp,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            "Sign in to continue",
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              height: 310.h,
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
                    height: 40.h,
                  ),
                  GeneralTextField(
                    hintText: 'Email',
                    loginTextController: emailController,
                    trailingIcon: "assets/icons/email.svg",
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  GeneralTextField(
                      hintText: 'Password',
                      loginTextController: passController,
                      trailingIcon: "assets/icons/lock.svg"),
                  SizedBox(
                    height: 15.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        ForgetPassword(),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 160),
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: baseColor,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SignInbutton(
                    buttonBackgroungColor: baseColor,
                    centerText: "Next",
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
