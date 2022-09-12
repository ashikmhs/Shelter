// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shelter/bussiness_logics/auth.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/ui/route/route.dart';
import 'package:get/get.dart';
import 'package:shelter/ui/widgets/my-form-field.dart';
import 'package:shelter/ui/widgets/violate-color-button.dart';

class SignUp extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 80.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create \nyour  Account',
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.violetColor,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'Create your account and start your \njourney',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                myFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'E-mail Address',
                ),
                myFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Enter Password',
                ),
                SizedBox(
                  height: 40.h,
                ),
                VioletButton(
                  'Create Account',
                  () => Auth().registration(
                      _emailController.text, _passwordController.text, context),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '--OR--',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/google.png',
                        height: 27.h,
                        width: 27.h,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/facebook.png',
                        height: 27.h,
                        width: 27.h,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: 'Already an user? ',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Log In',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.violetColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed(signIn),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
