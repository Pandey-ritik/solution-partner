import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/color.dart';

class histroy extends StatefulWidget {
  const histroy({super.key});

  @override
  State<histroy> createState() => _histroyState();
}

class _histroyState extends State<histroy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('History'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Card(
              child: Container(
                height: Get.height*0.29,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Information',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Name:', style: TextStyle(color: Colors.black),),
                          SizedBox(width: 105,),
                          Text('Rahul', style: TextStyle(color: appcolor.blueColor),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Mode:', style: TextStyle(color: Colors.black),),
                          SizedBox(width: 105,),
                          Text('Call', style: TextStyle(color: appcolor.blueColor),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Date & Time', style: TextStyle(color: Colors.black),),
                          SizedBox(width: 60,),
                          Text('01-01-2024 -10:00AM', style: TextStyle(color: appcolor.blueColor),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Calling Id', style: TextStyle(color: Colors.black),),
                          SizedBox(width: 80,),
                          Text('34567845678', style: TextStyle(color: appcolor.blueColor),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Time', style: TextStyle(color: Colors.black),),
                          SizedBox(width: 115,),
                          Text('1 Hour', style: TextStyle(color: appcolor.blueColor),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Total Amount', style: TextStyle(color: Colors.black),),
                          SizedBox(width: 52,),
                          Text('Rs. 500', style: TextStyle(color: appcolor.blueColor),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Card(
              child: Container(
                height: Get.height*0.29,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Information',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Name:', style: TextStyle(color: Colors.black),),
                          SizedBox(width: 105,),
                          Text('Sanjay', style: TextStyle(color: appcolor.blueColor),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Mode:', style: TextStyle(color: Colors.black),),
                          SizedBox(width: 105,),
                          Text('Video Call', style: TextStyle(color: appcolor.blueColor),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Date & Time', style: TextStyle(color: Colors.black),),
                          SizedBox(width: 60,),
                          Text('01-01-2024 -12:00PM', style: TextStyle(color: appcolor.blueColor),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Calling Id', style: TextStyle(color: Colors.black),),
                          SizedBox(width: 80,),
                          Text('34567845568', style: TextStyle(color: appcolor.blueColor),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Time', style: TextStyle(color: Colors.black),),
                          SizedBox(width: 115,),
                          Text('30 Min', style: TextStyle(color: appcolor.blueColor),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Total Amount', style: TextStyle(color: Colors.black),),
                          SizedBox(width: 52,),
                          Text('Rs. 700', style: TextStyle(color: appcolor.blueColor),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
