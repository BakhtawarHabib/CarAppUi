import 'package:carappui/UI/custom_widgets/general_button.dart';
import 'package:carappui/UI/custom_widgets/general_textinput.dart';
import 'package:carappui/UI/custom_widgets/siginIn/number_verification.dart';
import 'package:carappui/UI/custom_widgets/siginIn/customebutton.dart';
import 'package:carappui/UI/screens/forget_password.dart';
import 'package:carappui/UI/screens/singin_process.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_code_picker/country_code_picker.dart';

final TextEditingController firstnameController = TextEditingController();
final TextEditingController lastnameController = TextEditingController();
final TextEditingController refferealController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passController = TextEditingController();
final TextEditingController phonenumberController = TextEditingController();

class SignUpScreen extends StatefulWidget {
  double width = 170.w;
  double height = 0;
  Color color = baseColor;
  int counter = 1;

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                        height: 50.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            Text(
                              "Your Identity",
                              style: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Get.to(SignInProcess());
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
                        height: 8.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            Text(
                              "Step ${widget.counter}/2",
                              style: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 10.h,
                            width: 0.88.sw,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0)),
                            ),
                          ),
                          Container(
                            height: 10.h,
                            width: widget.width,
                            decoration: BoxDecoration(
                              color: widget.color,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            widget.counter == 1
                ? Padding(
                    padding: EdgeInsets.only(top: 180.h),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25.w),
                      height: 430.h,
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
                            hintText: 'First Name',
                            loginTextController: firstnameController,
                            trailingIcon: "assets/icons/user.svg",
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          GeneralTextField(
                              hintText: 'Last Name',
                              loginTextController: lastnameController,
                              trailingIcon: "assets/icons/user.svg"),
                          SizedBox(
                            height: 25.h,
                          ),
                          GeneralTextField(
                              hintText: 'Enter referral code (optional)',
                              loginTextController: refferealController,
                              trailingIcon: "assets/icons/referal.svg"),
                          SizedBox(
                            height: 20.h,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text:
                                          'By continuing your registration, You \naccept our ',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.sp,
                                      ),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: 'terms and conditions.',
                                          style: TextStyle(
                                            color: baseColor,
                                            fontFamily: 'Poppins',
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13.sp,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.width = widget.width + 170.w;
                                widget.color = baseColor;
                                widget.counter = widget.counter + 1;
                              });
                            },
                            child: SignInbutton(
                              buttonBackgroungColor: baseColor,
                              centerText: "Next",
                              textColor: whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.only(top: 170.h),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25.w),
                      height: 380.h,
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
                          // from this
                          Container(
                            height: 60.h,
                            width: 280.w,
                            decoration: BoxDecoration(
                              border: Border.all(color: greyInput),
                              color: greyInput,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: Center(
                                    child: CountryCodePicker(
                                      initialSelection: 'Pk',
                                      flagDecoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        // border: Border.all(
                                        //     color: blackColor, width: 2),
                                      ),
                                      textStyle: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13.sp,
                                          color: blackColor),
                                      textOverflow: TextOverflow.ellipsis,
                                      showFlag: true,
                                      // showDropDownButton: true,
                                      showCountryOnly: true,
                                      padding: EdgeInsets.all(0),
                                      showFlagDialog: true,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60.h,
                                  width: 140.w,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(
                                        top: 15.h,
                                        right: 10.w,
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Phone number',
                                      hintStyle: TextStyle(
                                        color: blackColor.withOpacity(0.5),
                                        fontFamily: 'Poppins',
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   child: Padding(
                          //     padding:
                          //         const EdgeInsets.symmetric(horizontal: 20),
                          //     child: Container(
                          //       child: TextField(
                          //         cursorColor: baseColor,
                          //         style: TextStyle(
                          //           color: blackColor,
                          //           fontFamily: 'Poppins',
                          //           fontWeight: FontWeight.bold,
                          //         ),
                          //         controller: phonenumberController,
                          //         decoration: InputDecoration(
                          //           hasFloatingPlaceholder: false,
                          //           focusedBorder: OutlineInputBorder(
                          //             borderRadius: BorderRadius.circular(10),
                          //             borderSide: BorderSide(
                          //               color: baseColor,
                          //               width: 1.5,
                          //             ),
                          //           ),
                          //           contentPadding: EdgeInsets.symmetric(
                          //               horizontal: 10.w, vertical: 15.h),
                          //           enabledBorder: OutlineInputBorder(
                          //             borderRadius: BorderRadius.circular(10),
                          //             borderSide: BorderSide(
                          //               color: greyColor,
                          //             ),
                          //           ),
                          //           filled: true,
                          //           fillColor: greyColor,
                          //           hintText: "Phone number",
                          //           hintStyle: TextStyle(
                          //             color: blackColor.withOpacity(0.45),
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: 20.sp,
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          //to that

                          SizedBox(
                            height: 25.h,
                          ),
                          GeneralTextField(
                            hintText: 'Password',
                            loginTextController: passController,
                            trailingIcon: "assets/icons/lock.svg",
                            leadingIcon: Icons.remove_red_eye,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(PhoneVerification());
                            },
                            child: SignInbutton(
                              buttonBackgroungColor: baseColor,
                              centerText: "Next",
                              textColor: whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
