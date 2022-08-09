// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:get/get.dart';

class VioletButton extends StatelessWidget {
  final Function onAction;
  String title;
  VioletButton(this.title, this.onAction);
  RxBool _value = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          _value.value = true;
          onAction();
        },
        child: Container(
          height: 45.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
            color: AppColors.violetColor,
          ),
          child: _value == false
              ? Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Please Wait',
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Transform.scale(
                      scale: 0.4,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
