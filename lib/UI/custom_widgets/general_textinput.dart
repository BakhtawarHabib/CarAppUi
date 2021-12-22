import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GeneralTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController loginTextController;
  final String trailingIcon;
  final IconData? leadingIcon;

  GeneralTextField({
    required this.hintText,
    required this.loginTextController,
    required this.trailingIcon,
    this.leadingIcon,
  });

  @override
  _GeneralTextFieldState createState() => _GeneralTextFieldState();
}

class _GeneralTextFieldState extends State<GeneralTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        cursorColor: baseColor,
        style: TextStyle(
          color: whiteColor,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        controller: widget.loginTextController,
        decoration: InputDecoration(
          prefixIcon: widget.trailingIcon == null
              ? SizedBox()
              : Padding(
                  padding: EdgeInsets.all(15),
                  child: SvgPicture.asset(widget.trailingIcon)),
          suffixIcon: widget.leadingIcon == null
              ? SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(
                    widget.leadingIcon,
                    color: blackColor.withOpacity(0.45),
                    size: 20,
                  ),
                ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: baseColor,
              width: 1.5,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 15.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: greyInput,
            ),
          ),
          filled: true,
          fillColor: greyInput,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: blackColor.withOpacity(0.45),
            fontWeight: FontWeight.w600,
            fontSize: 13.sp,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
      ),
    );
  }
}
