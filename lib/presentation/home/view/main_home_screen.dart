
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../course_screen/course_screen.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List imageList=[
      "https://i.ibb.co/WtRMfJt/10-Online-Admission.webp",
      "https://i.ibb.co/HH78S1J/3-Pattern-Design-CAD.webp",
      "https://i.ibb.co/P407CHQ/2-Apparel-Merchandising.jpg",
      "https://i.ibb.co/KG2YnDF/5ef49e586d7185001d72ec96.jpg",
      "https://i.ibb.co/k2p3hDC/1-Fashion-Design.jpg",
      "https://i.ibb.co/2Wy2LRR/Fashion-Design-10-copy.jpg",
      "https://i.ibb.co/xsNfvNg/FAJ2387.jpg",
      "https://i.ibb.co/bLsDFW9/3.jpg",
      "https://i.ibb.co/gt4FcT2/9-Lather-Design.jpg"
    ];
    
    return SingleChildScrollView(child: Padding(padding: EdgeInsets.all(30),
    child: SafeArea(
      child: Column(
        children: [
          const Text("Home",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
          Container(
            width: 400,
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                labelText: "Search category"
              ),
            ),
          ),
      
          Column(
          children: [
      
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Popular Product",style: TextStyle(fontSize: 21),),
          TextButton(onPressed: (){
            Get.to(()=>CourseScreen());
          }, child: Text("See All")),
          ],
          ),
          SizedBox(height: 20,),
          SizedBox(height: 200,child:ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 250,
                  child: Column(
                    children: [
                      Stack(
                        children:[
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Image.network(imageList[index],height:200,width: 250, fit: BoxFit.fill,),
                          ),

                          Positioned(
                            bottom:10,
                            child: Container(
                              color:Colors.white,
                              child:  Row(


                                children: [

                                Text(" 2000.00 ৳",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                                SizedBox(width: 40,),
                                Text("1500.00 ৳ ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),)


                              ],),
                            ),
                          )
                        ]
                      ),

                    ],
                  ),
                );
              },
          ) ,),



            SizedBox(height: 20,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Cosmetics",style: TextStyle(fontSize: 21),),
                TextButton(onPressed: (){
                  Get.to(()=>CourseScreen());
                }, child: Text("See All")),
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(height: 200,child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 250,
                  child: Column(
                    children: [
                      Stack(
                          children:[
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Image.network(imageList[index],height:200,width: 250, fit: BoxFit.fill,),
                            ),

                            Positioned(
                              bottom:10,
                              child: Container(
                                color:Colors.white,
                                child:  Row(


                                  children: [

                                    Text(" 2000.00 ৳",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                                    SizedBox(width: 40,),
                                    Text("1500.00 ৳ ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),)


                                  ],),
                              ),
                            )
                          ]
                      ),

                    ],
                  ),
                );
              },
            ) ,),
          ],
          ),
          SizedBox(height: 20,),
          Divider(),
          Column(
            children: [
      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recorded Course",style: TextStyle(fontSize: 21),),
                  TextButton(onPressed: (){}, child: Text("See All")),
                ],
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
      
                  children: [
                    Container(
                      height: 100,
                      width: 300,
                      color: Colors.blue,
      
      
                      child: Center(child: Text("Flutter Course",style: TextStyle(color: Colors.white),)),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 100,
                      width: 300,
                      color: Colors.green,
      
      
                      child: Center(child: Text("Python Course",style: TextStyle(color: Colors.white),)),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 100,
                      width: 300,
                      color: Colors.blue,
      
      
                      child: Center(child: Text("Flutter Course",style: TextStyle(color: Colors.white),)),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 100,
                      width: 300,
                      color: Colors.green,
      
      
                      child: Center(child: Text("Python Course",style: TextStyle(color: Colors.white),)),
                    ),
      
                    SizedBox(width: 20,),
                    Container(
                      height: 100,
                      width: 300,
                      color: Colors.blue,
      
      
                      child: Center(child: Text("Flutter Course",style: TextStyle(color: Colors.white),)),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 100,
                      width: 300,
                      color: Colors.green,
      
      
                      child: Center(child: Text("Python Course",style: TextStyle(color: Colors.white),)),
                    ),
      
      
      
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ),
    ));
  }
}
