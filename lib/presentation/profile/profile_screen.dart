import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:smart_selling_bd/presentation/login/login_sceen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Column(

        children: [
          Column(children: [
            SizedBox(height: 20,),
            Center(child: Image.asset("assets/image/profile.jpg",height: 100,width:100,fit: BoxFit.fill,)),
            SizedBox(height: 20,),
            Text("Jashim Uddin",style: TextStyle(fontSize: 21),),
            Text("jashim8328@gmail.com",style: TextStyle(fontSize: 21),),
          ],),


          SizedBox(height: 50,),

          Text("Personal Information",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60),
            child: Divider(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Text("Number : 017000000000",style: TextStyle(fontSize: 21),),
              Text("ID : 000012#1",style: TextStyle(fontSize: 21),),
              SizedBox(height: 5,),
              Text("Gender : Male",style: TextStyle(fontSize: 21),),
              SizedBox(height: 5,),
              Text("Address : Badda,Dhaka,Bangladesh",style: TextStyle(fontSize: 21),),
            ],
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Get.offAll(()=>const  LoginScreen());

            },
              child: const Text("Logout",style: TextStyle(fontSize: 21),))

        ],

      ),
    );
  }
}
