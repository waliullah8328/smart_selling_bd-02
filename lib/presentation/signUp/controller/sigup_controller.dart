import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

  // Variables
  final signUpFormKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final adminOrUserController = TextEditingController();



  // Function
signUp(){
  if(signUpFormKey.currentState!.validate()){
    /*
    if(passwordController.value == confirmController.value){
      Get.snackbar("Success", "Submitted successfully");

    }
    else{
      Get.snackbar("Error", "Password and confirm password doesn't match");
    }

     */


  }
}



}