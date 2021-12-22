import 'package:carappui/UI/custom_widgets/back_button.dart';
import 'package:carappui/UI/screens/PurchaseHistory/purchase_model.dart';
import 'package:carappui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurchaseHistory extends StatefulWidget {
  const PurchaseHistory({Key? key}) : super(key: key);

  @override
  _PurchaseHistoryState createState() => _PurchaseHistoryState();
}

class _PurchaseHistoryState extends State<PurchaseHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    BackButtonContainer(),
                    SizedBox(
                      width: 40.w,
                    ),
                    Text(
                      "Purchase History",
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 315.w,
                height: 700.h,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: Offset(10, 10), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 17.w,
                        ),
                        Text(
                          "November 2021",
                          style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 17.sp,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 0.42.sh,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: items.length,
                        padding: EdgeInsets.all(0),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 40.h,
                                        width: 40.w,
                                        child: Image.asset(items[index].image),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Container(
                                        width: 0.45.sw,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  items[index].name,
                                                  style: TextStyle(
                                                    color: blackColor,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 15.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  items[index].date,
                                                  style: TextStyle(
                                                    color: darkGrey,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Transaction ID: ",
                                                  style: TextStyle(
                                                    color: darkGrey,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10.sp,
                                                  ),
                                                ),
                                                Text(
                                                  items[index].transactionID,
                                                  style: TextStyle(
                                                    color: blackColor,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        "\£${items[index].price.toString()}",
                                        style: TextStyle(
                                          color: blackColor,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins',
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  height: 2.h,
                                  color: darkGrey.withOpacity(0.4),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 17.w,
                        ),
                        Text(
                          "October 2021",
                          style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 17.sp,
                          ),
                        ),
                      ],
                    ),

                    //dummy list
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Container(
                        height: 0.31.sh,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: items.length,
                          padding: EdgeInsets.all(0),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 40.h,
                                          width: 40.w,
                                          child:
                                              Image.asset(items[index].image),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Container(
                                          width: 0.40.sw,
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    items[index].name,
                                                    style: TextStyle(
                                                      color: blackColor,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 15.sp,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Transaction ID: ",
                                                    style: TextStyle(
                                                      color: darkGrey,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10.sp,
                                                    ),
                                                  ),
                                                  Text(
                                                    items[index].transactionID,
                                                    style: TextStyle(
                                                      color: blackColor,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10.sp,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    items[index].date,
                                                    style: TextStyle(
                                                      color: darkGrey,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10.sp,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          "\£${items[index].price.toString()}",
                                          style: TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    height: 2.h,
                                    color: darkGrey.withOpacity(0.4),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100.h)
            ],
          ),
        ),
      ),
    );
  }
}
