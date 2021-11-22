import 'package:booking_app/value/app_get.dart';
import 'package:booking_app/value/colors.dart';
import 'package:booking_app/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:nuss_app/server/chat_get.dart';

class CustomNavBottom extends StatelessWidget {
  AppGet appGet = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppGet>(
        init: AppGet(),
        builder: (controller) => BottomNavigationBar(
              elevation: 0,
              currentIndex: controller.indexScreen,
              onTap: (index) {
                controller.setIndexScreen(index);
              },
              showSelectedLabels: false,
              type: BottomNavigationBarType.fixed,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              items: [
                BottomNavigationBarItem(
                  activeIcon: Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        "Home",
                        color: AppColors.primaryColor,
                        fontSize: 14.sp,
                      )
                    ],
                  ),
                  icon: Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: AppColors.gray,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        "Home",
                        color: AppColors.gray,
                        fontSize: 14.sp,
                      )
                    ],
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  activeIcon: Column(
                    children: [
                      Icon(
                        Icons.bookmark,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        "Booking",
                        color: AppColors.primaryColor,
                        fontSize: 14.sp,
                      )
                    ],
                  ),
                  icon: Column(
                    children: [
                      Icon(
                        Icons.bookmark,
                        color: AppColors.gray,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        "Booking",
                        color: AppColors.gray,
                        fontSize: 14.sp,
                      )
                    ],
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  activeIcon: Column(
                    children: [
                      Icon(
                        Icons.email,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        "Chat",
                        color: AppColors.primaryColor,
                        fontSize: 14.sp,
                      )
                    ],
                  ),
                  icon: Column(
                    children: [
                      Icon(
                        Icons.email,
                        color: AppColors.gray,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        "Chat",
                        color: AppColors.gray,
                        fontSize: 14.sp,
                      )
                    ],
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  activeIcon: Column(
                    children: [
                      Icon(
                        Icons.collections_bookmark_rounded,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        "News",
                        color: AppColors.primaryColor,
                        fontSize: 14.sp,
                      )
                    ],
                  ),
                  icon: Column(
                    children: [
                      Icon(
                        Icons.collections_bookmark_rounded,
                        color: AppColors.gray,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        "News",
                        color: AppColors.gray,
                        fontSize: 14.sp,
                      )
                    ],
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  activeIcon: Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        "Account",
                        color: AppColors.primaryColor,
                        fontSize: 14.sp,
                      )
                    ],
                  ),
                  icon: Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: AppColors.gray,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                        "Account",
                        color: AppColors.gray,
                        fontSize: 14.sp,
                      )
                    ],
                  ),
                  label: "",
                ),
              ],
            ));
  }
}
