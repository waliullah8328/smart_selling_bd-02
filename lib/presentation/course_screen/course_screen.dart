import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {

  List list = [
    const CourseContainer(title: "Python",color: Colors.red,),
    const CourseContainer(title: "Flutter",color: Colors.orange,),
    const CourseContainer(title: "Kotlin",color: Colors.blue,),
    const CourseContainer(title: "Networking",color: Colors.green,),
    const CourseContainer(title: "Web Design",color: Colors.pink,),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All course Screen"),),
      body: GridView.builder(
        itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return list[index];
          },
      ),
    );
  }
}

class CourseContainer extends StatelessWidget {
  const CourseContainer({
    super.key, required this.title, required this.color,
  });
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: color,
        child: Center(child: Text(title,style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
