import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPaswordTextField extends StatelessWidget {
  const CustomPaswordTextField({
    super.key, required this.labelText, required this.controller,
  });

  final String labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller ,

      obscureText: true,
      validator: (value){
        if(value!.isEmpty){
          return "Please Enter Your Password";

        }},
      decoration:  InputDecoration(
        // hintText: "Enter email",
        labelText: labelText,
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
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                width: 4,
                color: Colors.blue
            )
        ),
        suffixIcon: Icon(Icons.remove_red_eye),
      ),

    );
  }
}