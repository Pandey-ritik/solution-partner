import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/image.dart';

import '../Drawer/schedule.dart';

class call extends StatefulWidget {
  const call({super.key});

  @override
  State<call> createState() => _callState();
}

class _callState extends State<call> {
  bool mute = true;
  bool speaker = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Get.off(callAttend());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff7ACAEB), Color(0xff01A0E2)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [0.4, 0.7],
            tileMode: TileMode.repeated,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: Get.height*0.2,),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(image.profileImage),
            ),
            SizedBox(height: 20,),
            Text('Calling...',style: TextStyle(color: Colors.white,fontSize: 15),),
            SizedBox(height: 10,),
            Text('Abhishek',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: Get.height *0.3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      speaker = !speaker;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor:speaker? Colors.black:Colors.grey,
                    radius: 30,
                    child: Center(child: Icon(FontAwesomeIcons.volumeHigh,color: speaker?Colors.white:Colors.black,)),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.off(Schedule());
                  },
                  child: CircleAvatar(
                    radius: 38,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 35,
                      child: Center(child: Icon(Icons.call_end,color: Colors.white,)),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      mute = !mute;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: mute?Colors.black:Colors.grey,
                    radius: 30,
                    child: Center(child: Icon(FontAwesomeIcons.microphoneLinesSlash,color: mute?Colors.white:Colors.black,)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
class callAttend extends StatefulWidget {
  const callAttend({super.key});

  @override
  State<callAttend> createState() => _callAttendState();
}

class _callAttendState extends State<callAttend> {
  int counter =0;
  late Timer timer;
  void startCounter(){
    counter = 0;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if(counter <59){
       setState(() {
         counter++;
       });
      }else{
        Get.off(Schedule());
      }
    }
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startCounter();
  }
  bool mute = true;
  bool speaker = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff7ACAEB), Color(0xff01A0E2)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [0.4, 0.7],
            tileMode: TileMode.repeated,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: Get.height*0.2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(image.postImage2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey[200],size: 15,),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey[300],size: 15,),
                  ],
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(image.profileImage),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text('In Call with',style: TextStyle(color: Colors.white,fontSize: 15),),
            SizedBox(height: 10,),
            Text('Abhishek',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            Text('00:${counter >9?counter:'0${counter}'}',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
            SizedBox(height: Get.height *0.2,),
            Container(
              height: 50,
              width: Get.width*0.7,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(FontAwesomeIcons.videoCamera,color: Colors.white,),
                  Icon(FontAwesomeIcons.person,color: Colors.white,),
                  Icon(FontAwesomeIcons.recordVinyl,color: Colors.white,),
                  Icon(FontAwesomeIcons.facebookMessenger,color: Colors.white,),
                ],
              ),
            ),
            SizedBox(height: Get.height *0.1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          speaker = !speaker;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor:speaker? Colors.black:Colors.grey,
                        radius: 30,
                        child: Center(child: Icon(FontAwesomeIcons.volumeHigh,color: speaker?Colors.white:Colors.black,)),
                      ),
                    ),
                    Text('Speaker')
                  ],
                ),
                InkWell(
                  onTap: (){
                    Get.off(Schedule());
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 38,
                      child: Center(child: Icon(Icons.call_end,color: Colors.white,)),
                    ),
                  ),
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          mute = !mute;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: mute?Colors.black:Colors.grey,
                        radius: 30,
                        child: Center(child: Icon(FontAwesomeIcons.microphoneLinesSlash,color: mute?Colors.white:Colors.black,)),
                      ),
                    ),
                    Text('Mute')
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

