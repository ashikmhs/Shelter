import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shelter/bussiness_logics/form.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/route/route.dart';
import 'package:shelter/styles/styles.dart';
import 'package:shelter/widgets/my-form-field.dart';
import 'package:get/get.dart';
import 'package:shelter/widgets/violate-color-button.dart';
import 'package:toggle_switch/toggle_switch.dart';

class UserForm extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  Rx<TextEditingController> _dobController = TextEditingController().obs;
  Rx<DateTime> initialDate = DateTime.now().obs;

  String? dob;
  String gender = 'Male';

  _selectDate(BuildContext context) async {
    final selectedDate = await showDatePicker(
        context: context,
        initialDate: initialDate.value,
        firstDate: DateTime(1971),
        lastDate: DateTime(2050));

    if (selectedDate != null && selectedDate != initialDate) {
      _dobController.value.text =
          '${selectedDate.day} - ${selectedDate.month} - ${selectedDate.year}';

      //_dobController.value.text = dob!;
      dob = _dobController.value.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 27.w, right: 27.w, top: 50.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tell Us More About You',
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.violetColor,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'We will not share your information\noutside this application.',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                myFormField(
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  hintText: 'Full Name',
                ),
                myFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  hintText: 'Phone Number',
                ),
                myFormField(
                  controller: _addressController,
                  keyboardType: TextInputType.text,
                  hintText: 'Address',
                ),
                Obx(
                  () => TextFormField(
                    controller: _dobController.value,
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'Date of Birth',
                      hintStyle:
                          TextStyle(fontSize: 15.sp, color: Colors.black),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _selectDate(context);
                        },
                        icon: Icon(Icons.calendar_month_rounded),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ToggleSwitch(
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: ['Male', 'Female'],
                  onToggle: (index) {
                    if (index == 0) {
                      gender = 'Male';
                    } else {
                      gender = 'Female';
                    }
                    print('switched to : $index');
                  },
                ),
                SizedBox(
                  height: 40.h,
                ),
                VioletButton(
                  'Submit',
                  () => UsersInfo().sendFormDataToDB(
                      _nameController.text,
                      int.parse(_phoneController.text),
                      _addressController.text,
                      dob!,
                      gender),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
