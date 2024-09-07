import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_selling_bd/widgets/custom_password_text_field.dart';
import 'package:smart_selling_bd/widgets/custom_text_field_wiget.dart';

import '../../login/login_sceen.dart';
import '../controller/sigup_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: controller.signUpFormKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Fillup all Field to sign Up",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  CustomTextFormField(
                      hintText: "Enter name",
                      validatorText: "Please enter your name",
                      controller: controller.nameController),
                  SizedBox(
                    height: 7,
                  ),
                  CustomTextFormField(
                      hintText: "Enter email",
                      validatorText: "Please enter your email",
                      controller: controller.emailController),
                  SizedBox(
                    height: 7,
                  ),
                  CustomTextFormField(
                      hintText: "Enter phone number",
                      validatorText: "Please enter your phone number",
                      controller: controller.phoneController),
                  SizedBox(
                    height: 7,
                  ),
                  CustomPaswordTextField(
                      labelText: "Enter password",
                      controller: controller.passwordController),
                  SizedBox(
                    height: 7,
                  ),
                  CustomPaswordTextField(
                      labelText: "Enter confirm password",
                      controller: controller.confirmController),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                      height: 35,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            if(controller.signUpFormKey.currentState!.validate()){
                              if(controller.passwordController.text == controller.confirmController.text){
                                debugPrint("Submitted successfully");
                                Get.snackbar("Success", "Submitted successfully");
                              }
                              else{
                                debugPrint("Password and confirm password doesn't match");
                                Get.snackbar("Error", "Password and confirm password doesn't match");
                              }

                            }
        
                          },
                          child: Text("Submit"))),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Alread have account?"),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Going to Login Page")));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ));
                          },
                          child: Text(
                            "Login Now",
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
