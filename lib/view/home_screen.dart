import 'package:booking_app/value/colors.dart';
import 'package:booking_app/widgets/custom_button.dart';
import 'package:booking_app/widgets/custom_text.dart';
import 'package:booking_app/widgets/home_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: Get.width,
                height: 250.h,
                color: AppColors.whiteColor,
                child: Column(
                  children: [
                    Container(
                      width: Get.width,
                      height: 150.h,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0.h,
                child: Container(
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 380.w,
                        // height: 140.h,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(
                                color: AppColors.gray.withOpacity(0.23))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            //The Text Field
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Container(
                                width: Get.width,
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color: AppColors.gray.withOpacity(0.23),
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(left: 10.w),
                                      border: InputBorder.none,
                                      hintText: "What're you looking for ?",
                                      hintStyle: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w300)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  HomeItem(
                                    title: "Farms",
                                  ),
                                  SizedBox(
                                    width: 80.w,
                                  ),
                                  HomeItem(
                                    title: "Bangalows",
                                  ),
                                  SizedBox(
                                    width: 40.w,
                                  ),
                                  HomeItem(
                                    title: "Camps & Resorts",
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
                ),
              )
            ],
          ),
          //The First List
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 20.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Farms",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 21.sp),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  SizedBox(
                                    width: 380.w,
                                    height: 220.h,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      primary: false,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  height: 220.h,
                                                  width: 200.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.r),
                                                      color: AppColors
                                                          .primaryColor,
                                                      image: DecorationImage(
                                                          fit: BoxFit.fill,
                                                          image: AssetImage(
                                                            "assets/images/image.png",
                                                          ))),
                                                ),
                                                Positioned(
                                                  bottom: 12.h,
                                                  left: 10.w,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomText(
                                                        "Deadsea",
                                                        fontSize: 16.sp,
                                                        color: AppColors
                                                            .whiteColor,
                                                      ),
                                                      Text(
                                                        "Fghh",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: AppColors
                                                                .whiteColor,
                                                            fontSize: 18.sp),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      CustomButton(
                                                        width: 80.w,
                                                        height: 22.h,
                                                        title: "Book Now",
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            )
                                          ],
                                        );
                                      },
                                      itemCount: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  //The Second List
                                  Text(
                                    "Bangalows",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 21.sp),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  SizedBox(
                                    width: 380.w,
                                    height: 220.h,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      primary: false,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  height: 220.h,
                                                  width: 200.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.r),
                                                      color: AppColors
                                                          .primaryColor,
                                                      image: DecorationImage(
                                                          fit: BoxFit.fill,
                                                          image: AssetImage(
                                                            "assets/images/image.png",
                                                          ))),
                                                ),
                                                Positioned(
                                                  bottom: 12.h,
                                                  left: 10.w,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomText(
                                                        "Deadsea",
                                                        fontSize: 16.sp,
                                                        color: AppColors
                                                            .whiteColor,
                                                      ),
                                                      Text(
                                                        "Fghh",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: AppColors
                                                                .whiteColor,
                                                            fontSize: 18.sp),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      CustomButton(
                                                        width: 80.w,
                                                        height: 22.h,
                                                        title: "Book Now",
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            )
                                          ],
                                        );
                                      },
                                      itemCount: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
