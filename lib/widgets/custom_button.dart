import 'package:booking_app/value/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final double? width;
  final double? height;
  final Function()? onTap;
  CustomButton({this.title, this.onTap, this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width ?? 20.w,
          height: height ?? 15.h,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(3.r)),
          child: Center(
            child: Text(
              title ?? "",
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w700),
            ),
          ),
        ));
  }
}
