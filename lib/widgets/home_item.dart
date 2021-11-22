import 'package:booking_app/value/colors.dart';
import 'package:booking_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeItem extends StatelessWidget {
  String? title;
  // Icon? icon;
  HomeItem({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.gray.withOpacity(0.23),
          ),
          child: Center(
            child: Icon(
              Icons.home,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        CustomText(
          title,
          fontSize: 15.sp,
        )
      ],
    );
  }
}
