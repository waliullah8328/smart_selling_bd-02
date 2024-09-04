import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, required this.hintText, required this.validatorText, required this.controller,
  });

  final String hintText;
  final String validatorText;
  final TextEditingController controller;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value){
        if(value!.isEmpty){
          return validatorText;

        }},
      decoration:  InputDecoration(
        // hintText: "Enter email",
        hintText: hintText,
        border: InputBorder.none,

        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                width: 4,
                color: Colors.blue
            )
        ),
        focusedBorder : OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                width: 4,
                color: Colors.blue
            )
        ),
        errorBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                width: 4,
                color: Colors.blue
            )
        ),
      ),

    );
  }
}