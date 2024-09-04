
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smart_selling_bd/presentation/login/controller/login_controller.dart';
import 'package:smart_selling_bd/presentation/splash/splash_screen.dart';

import '../../widgets/custom_password_text_field.dart';
import '../../widgets/custom_text_field_wiget.dart';
import '../signUp/view/signUp_screen.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Form(
          key: controller.formKey,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [

              const Text("Welcome Back!",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),

              const Text("Enter your email & password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              const SizedBox(height: 20,),
              CustomTextFormField(hintText: "Enter Email",controller: controller.emailTextController,validatorText: "Please enter your email",),
              const SizedBox(height: 20,),
              CustomPaswordTextField(labelText: "Enter Password",controller:controller.paswordTextController ,),
              const SizedBox(height: 30,),
              SizedBox(
                  height: 60,
                  width: double.infinity,

                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          backgroundColor: Colors.green
                      ),

                      onPressed: (){
                        if(controller.formKey.currentState!.validate()){
                          Get.to(()=>const SplashScreen());


                        }




                        }





                      , child: const Text("Login",style: TextStyle(fontSize: 26),))),
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){

                  Get.to(()=>const SignUpScreen());


                },
                child: Text.rich(TextSpan(
                    children: [
                      TextSpan(text: "Don't have account? ",style: TextStyle(fontSize: 17)),
                      TextSpan(text: "SingUp Now",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    ]
                )),
              )
            ],
          ),
        ),
      ),
    );
  }


}






