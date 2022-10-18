// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:shelter/const/app_strings.dart';
import 'package:shelter/ui/views/bottom_nav_controller/pages/nav_add.dart';
import 'package:shelter/ui/views/bottom_nav_controller/pages/nav_favourite.dart';
import 'package:shelter/ui/views/bottom_nav_controller/pages/nav_home.dart';

class BottomNavController extends StatelessWidget {
  RxBool _drawer = false.obs;
  RxInt _currentIndex = 0.obs;
  final _pages = [
    NavHome(),
    NavAdd(),
    NavFavourite(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedPositioned(
          duration: Duration(microseconds: 400),
          top: _drawer.value == false ? 0 : 100.h,
          bottom: _drawer.value == false ? 0 : 100.h,
          left: _drawer.value == false ? 0 : 200.w,
          right: _drawer.value == false ? 0 : -100.w,
          child: Container(
            decoration: BoxDecoration(),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: _drawer.value == false
                    ? IconButton(
                        onPressed: () {
                          _drawer.value = true;
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                      )
                    : IconButton(
                        onPressed: () {
                          _drawer.value = false;
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                      ),
                title: Text(
                  AppStrings.appName,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentIndex.value,
                onTap: (value) => _currentIndex.value = value,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.add_outlined), label: 'Add'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_outline), label: 'Favorite'),
                ],
              ),
              body: _pages[_currentIndex.value],
            ),
          ),
        ));
  }
}
