import 'package:carappui/UI/screens/HomeScreen/HomeScreen.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 70.h,
        margin: EdgeInsets.symmetric(
          horizontal: 70,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: baseColor.withOpacity(0.07),
              spreadRadius: 10,
              blurRadius: 20,
              offset: Offset(8, 0), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      pageNumber = 1;
                    });
                  },
                  child: Text("1")),
              InkWell(
                  onTap: () {
                    setState(() {
                      pageNumber = 2;
                    });
                  },
                  child: Text("2")),
              InkWell(
                  onTap: () {
                    setState(() {
                      pageNumber = 3;
                    });
                  },
                  child: Text("3")),
            ],
          ),
        ),
      ),
    );
  }
}
