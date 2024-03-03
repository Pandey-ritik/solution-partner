import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:solution_parnter/Widget/blockButton.dart';

class Subcription extends StatefulWidget {
  const Subcription({super.key});

  @override
  State<Subcription> createState() => _SubcriptionState();
}

class _SubcriptionState extends State<Subcription> {
  var isselected  ;
  var price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Get.back();
            },
            child: CircleAvatar(
              radius: 10,
              backgroundColor: appcolor.blueColor,
              child: Icon(Icons.arrow_back,color: Colors.white,),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(child: Image.asset(image.subcr)),
          SizedBox(height: 10,),
          Text('Upgrade To Premiumn',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: appcolor.blueColor),),
          SizedBox(height: 10,),
          Text('Unlimited Swips,Likes,Matches and so more!',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.grey),),
         SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            InkWell(
              onTap: (){
                setState(() {
                  isselected = '1';
                  price= 'Get 12 Monthe/₹600';
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: isselected == '1'?appcolor.blueColor:Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                width: Get.width*0.25,

                child: Column(
                  children: [
                    Container(
                    //  height: 20,
                      decoration: BoxDecoration(
                        color: appcolor.blueColor,
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(10),right: Radius.circular(10))
                      ),
                    child:  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('SAVE 66%',style: TextStyle(color: Colors.white,fontSize: 12),),
                    )
                    ),
                    Text('12',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                    Text('months',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),),
                    Text('₹600/mt',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
            ),
              InkWell(
                onTap: (){
                  setState(() {
                    isselected = '2';
                    price= 'Get 3 Monthe/₹800';
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: isselected == '2'?appcolor.blueColor:Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  width: Get.width*0.25,

                  child: Column(
                    children: [
                      Container(
                        //  height: 20,
                          decoration: BoxDecoration(
                              color: appcolor.blueColor,
                              borderRadius: BorderRadius.horizontal(left: Radius.circular(10),right: Radius.circular(10))
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('SAVE 33%',style: TextStyle(color: Colors.white,fontSize: 12),),
                          )
                      ),
                      Text('3',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                      Text('months',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),),
                      Text('₹800/mt',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    isselected ='3';
                    price= 'Get 1 Monthe/₹900';
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: isselected == '3'?appcolor.blueColor:Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  width: Get.width*0.25,
                  child: Column(
                    children: [
                      Container(
                        //  height: 20,
                          decoration: BoxDecoration(
                              color: appcolor.blueColor,
                              borderRadius: BorderRadius.horizontal(left: Radius.circular(10),right: Radius.circular(10))
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('SAVE 66%',style: TextStyle(color: Colors.white,fontSize: 12),),
                          )
                      ),
                      Text('1',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                      Text('months',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),),
                      Text('₹900/mt',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),
              ),
          ],),
          SizedBox(height: 10,),
          blockButton(
            widget: Text('${price==null?'Subscription':price}',style: TextStyle(color: Colors.white),)
          ),SizedBox(height: 10,),
          Text('When wil I be filled?',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.black),),
        SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 10),
            child: Text('  Your SolutionKey account will be billed at the end of your trial period (if applicable)or on confirmation of your subscription',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.grey),),
          ),
          SizedBox(height: 30,),
          Text('Does My subscription Auto Renew?',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.black),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 10),
            child: Text('Yes, You can disable that at any time with just one tap in the app store',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.grey),),
          ),

        ],
      ),
    );
  }
}
