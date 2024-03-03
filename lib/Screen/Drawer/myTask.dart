import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/color.dart';

class myTask extends StatefulWidget {
  const myTask({super.key});

  @override
  State<myTask> createState() => _myTask();
}

class _myTask extends State<myTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Tasks'),

      ),
      bottomNavigationBar: Container(
        height: Get.height*0.08,
        child: Row(
          children: [
            Container(
              width: Get.width*0.5,

              color: appcolor.blueColor,
              child: Center(child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add,color: Colors.white,),
                  Text(' Add Task',style: TextStyle(color: Colors.white,fontSize: 15),)
                ],
              ),),
            ),
            Container(
              width: Get.width*0.5,
              color: Colors.grey,
              child: Center(child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.filter_alt_rounded,color: Colors.white,),
                  Text(' Filter Task',style: TextStyle(color: Colors.white,fontSize: 15),)
                ],
              ),),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: 10,),
          // Padding(
          //   padding: const EdgeInsets.only(left: 20,right: 20),
          //   child: SizedBox(
          //     height: Get.height * 0.05,
          //     child: TextField(
          //       decoration: InputDecoration(
          //           contentPadding: EdgeInsets.only(right: 10,top: 10,left: 20),
          //           suffixIcon: Icon(Icons.search),
          //           hintText: 'Search Team',focusedBorder: OutlineInputBorder(
          //           borderSide: BorderSide(color: appcolor.blueColor),
          //           borderRadius: BorderRadius.all(Radius.circular(20))
          //       ),
          //           border: OutlineInputBorder(
          //             borderRadius: BorderRadius.all(Radius.circular(20)),
          //           )
          //       ),
          //     ),
          //   ),
          // ),

          Text('You do not have any team at this moment.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('click ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
              Text(' "+Add Task"',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: appcolor.blueColor),textAlign: TextAlign.center,),
              Text(' button ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
            ],
          )

        ],
      ),
    );
  }
}
