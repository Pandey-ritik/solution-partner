import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/color.dart';

class team extends StatefulWidget {
  const team({super.key});

  @override
  State<team> createState() => _add_clientState();
}

class _add_clientState extends State<team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(11),
                  ),
                  color: appcolor.blueColor
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.add,color: Colors.white,),
                    Text(' Add Team',style: TextStyle(color: Colors.white,fontSize: 10),)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: SizedBox(
              height: Get.height * 0.05,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 10,top: 10,left: 20),
                    suffixIcon: Icon(Icons.search),
                    hintText: 'Search Team',focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appcolor.blueColor),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),

                    )
                ),
              ),
            ),
          ),
          SizedBox(height: Get.height*0.3,),
          Text('You do not have any team at this moment.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('click ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
              Text(' "+Add Team"',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: appcolor.blueColor),textAlign: TextAlign.center,),
              Text(' button ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
            ],
          )
        ],
      ),
    );
  }
}
