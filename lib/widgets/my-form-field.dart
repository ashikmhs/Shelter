import 'package:flutter/material.dart';
import 'package:shelter/styles/styles.dart';

class myFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String hintText;
  myFormField({required this.controller, required this.keyboardType,required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: AppStyles().textFieldDecoration(hintText),
    );
  }
}


// class myFormField extends StatelessWidget {
//   const myFormField({
//     Key? key,
//     required TextEditingController emailController,
    
//   }) : _emailController = emailController, super(key: key);

//   final TextEditingController _emailController;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: _emailController,
//       keyboardType: TextInputType.emailAddress,
//       decoration: AppStyles().textFieldDecoration('Email Address'),
//     );
//   }
// }