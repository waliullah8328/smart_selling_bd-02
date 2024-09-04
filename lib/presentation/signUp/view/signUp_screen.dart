import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../login/login_sceen.dart';
import '../controller/sigup_controller.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      body: Form(
        key: controller.signUpFormKey,

        child: Padding(
          padding: const EdgeInsets.all(50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60,),
                Text("Fillup all Field to sign Up",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                TextFormField(
                  controller: controller.nameController,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Enter Your Name";

                    }

                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Enter Name",
                  ),
                ),
                TextFormField(
                  controller: controller.emailController,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Enter Your Email";

                    }

                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Enter Email",
                  ),
                ),
                TextFormField(
                  controller: controller.phoneController,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Enter Your Phone";

                    }
                    else if(value.length != 11){
                      return "Enter 11 digit of number";
                    }
                    return null;

                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Enter Phone Number",
                  ),
                ),

                TextFormField(
                  controller: controller.passwordController,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Enter Your Password";

                    }

                  },
                  obscureText: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(

                      labelText: "Enter Password",
                      suffix: Icon(Icons.visibility_off)
                  ),
                ),
                TextFormField(
                  controller: controller.confirmController,

                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Enter Your Password";

                    }

                  },
                  obscureText: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(

                      labelText: "Confirm Password",
                      suffix: Icon(Icons.visibility_off)
                  ),
                ),
                SizedBox(height: 50,),

                SizedBox(
                    height: 35,
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      if(controller.signUpFormKey.currentState!.validate()){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Submitted Successfully")));

                      }
                    }, child: Text("Submit"))),
                SizedBox(height: 50,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Alread have account?"),
                    SizedBox(width: 10,),
                    InkWell(
                        onTap: (){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Going to Login Page")));
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginScreen(),));

                        },
                        child: Text("Login Now",style: TextStyle(color: Colors.blue),))
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
