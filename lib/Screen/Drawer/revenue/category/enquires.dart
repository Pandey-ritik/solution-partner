import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class enquires extends StatefulWidget {
  const enquires({super.key});

  @override
  State<enquires> createState() => _enquiresState();
}

class _enquiresState extends State<enquires> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.blueColor,
      appBar: AppBar(
        title: Text('Enquiries'),
      ),
      // body: Container(
      //   height: Get.height,
      //    color: Colors.red,
      // ),
    body: Stack(
      children: [
       Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: Get.height*0.8,
            width: Get.width,
            decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50))
            ),
            child:
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:90),
                Text('Enquiries',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: appcolor.blueColor),),
                  SizedBox(height: 10,),
                  enu('Insurance', 'I have some doubts on my term insurance', 'Sanjay', 'jan 10,2024 11:32PM-Rohtak,Haryana', '${image.postImage2}'),
                  SizedBox(height: 10,),
                  enu('Insurance', 'Now that we\'ve gone over best practices let\'s review examples of some of the most effective Contact Us pages on the Internet.', 'Abhishek', 'jan 09,2024 11:00PM-Hisar,Harynana', '${image.postImage1}')
                ],),
            ),
          ),
        ],
      ),
        Positioned(
        bottom: Get.height * 0.7,
          left: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(

                decoration: BoxDecoration(
                    color: appcolor.blueColor,
                  border: Border.all(color: Colors.white,width: 2)
                ),
                height: 120,
              width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.question_mark,color: Colors.white,),
                    Text('New',style: TextStyle(color: Colors.white),),
                    Text('11514',style: TextStyle(color: Colors.white),),
                  ],
                ),

              ),
              SizedBox(width: 20,),
              Container(

                decoration: BoxDecoration(
                    color: appcolor.blueColor,
                    border: Border.all(color: Colors.white,width: 2)
                ),
                height: 120,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Answered',style: TextStyle(color: Colors.white),),
                    Text('0',style: TextStyle(color: Colors.white,fontSize: 14),),
                    Text('Last Update 551 Mins Ago',style: TextStyle(color: Colors.white,fontSize: 8),),
                  ],
                ),

              ),
            ],
          ),
        )

      ], ),
    );
  }
  Widget enu(loan,content,name,address,imag){
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.all(Radius.circular(11)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(loan,style: TextStyle(color: appcolor.blueColor),),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: appcolor.blueColor
                  ),
                  onPressed: (){}, child: Text('Open',style: TextStyle(color: Colors.white),)),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: SizedBox(
               width: Get.width*0.9,
                child: Text(content)),
          ),
          ListTile(
            title: Text(name,style: TextStyle(color: appcolor.black),),
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(imag,),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: Get.width*0.4,
                    child: Text(address,style: TextStyle(color: Colors.black,fontSize: 10),)),
                IconButton(onPressed: (){}, icon: Icon(Icons.forward,color: appcolor.blueColor,))
              ],
            ),
          )

        ],
      ),
    );
  }
}
