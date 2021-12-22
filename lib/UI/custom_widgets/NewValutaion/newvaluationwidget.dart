import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewValuationWidget extends StatefulWidget {
  String text;
  String price;
  NewValuationWidget({required this.text, required this.price});

  @override
  _NewValuationWidgetState createState() => _NewValuationWidgetState();
}

class _NewValuationWidgetState extends State<NewValuationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Text(
            widget.text,
            style: GoogleFonts.poppins(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: greyText,
            ),
          ),
          Spacer(),
          Text(
            widget.price,
            style: GoogleFonts.poppins(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
