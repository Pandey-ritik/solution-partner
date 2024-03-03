import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Widget/blockButton.dart';
import '../call_video/VideoCall.dart';
import '../call_video/chat.dart';
import '../call_video/video/login_page.dart';



class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}
class _ScheduleState extends State<Schedule> {
  bool isSelected=true;
  bool isSelected2=false;
  bool isSelected3=false;
  void toggleSwitch(bool value) {
    setState(() {
      isSelected3 = !isSelected3;
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(isSelected3==true?'Online':'Offline')));
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              actions: [
                Switch(value: isSelected3 , onChanged: toggleSwitch,activeColor: appcolor.blueColor,)],
              title: Text("Schedules",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),),
              centerTitle: true,
              bottom: TabBar(
                  tabs: const [
                    Tab(child:Text("Online",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                    Tab(child:Text("Physical",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
                  ]
              ),
            ),
            resizeToAvoidBottomInset: false,
            // endDrawer: Drawers(context),
            body: TabBarView(children: [
              OnlineSchedule(),
              PhysicalSchedule()
            ])
        )
    );

  }
}



class OnlineSchedule extends StatefulWidget {
  const OnlineSchedule({super.key});

  @override
  State<OnlineSchedule> createState() => _OnlineScheduleState();
}

class _OnlineScheduleState extends State<OnlineSchedule> {
  TextEditingController enter = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(11)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 4,right: 4,top: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("21-02-2024",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Text("Name: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Sanjay",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Mode: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Video Call",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("ID: ",style:TextStyle(fontWeight: FontWeight.bold)),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text("AB12R ",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){
                            }, child:Text("Cancel",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){
                              VngTestScreen1 chat = VngTestScreen1();
                              alertbos(context,chat,'Video Call',enter);
                            }, child:Text("Accept",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(11)
              ),
              child:Padding(
                padding: const EdgeInsets.only(left: 4,right: 4,top: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("21-02-2024",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Text("Name: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Ashish",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Mode: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Call",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("ID: ",style:TextStyle(fontWeight: FontWeight.bold)),

                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text("AB12R ",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                            ),


                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){}, child:Text("Cancel",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){
                              calling chat = calling(
                                callid: enter.text.toString(),);
                              alertbos(context,chat,'Call',enter);

                            }, child:Text("Accept",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(11)
              ),
              child:Padding(
                padding: const EdgeInsets.only(left: 4,right: 4,top: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("21-02-2024",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Text("Name: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Abhishek",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Mode: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("chat",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("ID: ",style:TextStyle(fontWeight: FontWeight.bold)),

                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text("AB12R ",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){}, child:Text("Cancel",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){
                              chatbox chat = chatbox();
                              alertbos(context,chat,'Chat',enter);
                             // Get.to(chatbox());
                            }, child:Text("Accept",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(11)
              ),
              child:Padding(
                padding: const EdgeInsets.only(left: 4,right: 4,top: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("21-02-2024",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Text("Name: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Sonty",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Mode: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Video Call",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("ID: ",style:TextStyle(fontWeight: FontWeight.bold)),

                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text("AB12R ",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){}, child:Text("Cancel",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){

                              LoginPage chat = LoginPage();
                              alertbos(context,chat,'Video Call',enter);
                            }, child:Text("Accept",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class PhysicalSchedule extends StatefulWidget {
  const PhysicalSchedule({super.key});

  @override
  State<PhysicalSchedule> createState() => _PhysicalScheduleState();
}

class _PhysicalScheduleState extends State<PhysicalSchedule> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(11)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 4,right: 4,top: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("21-02-2024",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Text("Name: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Sanjay",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Time: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("10:00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("ID: ",style:TextStyle(fontWeight: FontWeight.bold)),

                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text("AB12R ",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                            ),


                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){}, child:Text("Cancel",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){}, child:Text("Accept",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(11)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 4,right: 4,top: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("21-02-2024",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Text("Name: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Saurbh",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Time: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("11:00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("ID: ",style:TextStyle(fontWeight: FontWeight.bold)),

                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text("AB12R ",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                            ),


                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){}, child:Text("Cancel",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){}, child:Text("Accept",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(11)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 4,right: 4,top: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("21-02-2024",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Text("Name: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Sanjay",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Time: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("02:00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("ID: ",style:TextStyle(fontWeight: FontWeight.bold)),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text("AB12R ",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){}, child:Text("Cancel",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){}, child:Text("Accept",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(11)
              ),

              child: Padding(
                padding: const EdgeInsets.only(left: 4,right: 4,top: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("21-02-2024",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Text("Name: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Sanjay",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Time: ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("04:00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("ID: ",style:TextStyle(fontWeight: FontWeight.bold)),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text("AB12R ",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){}, child:Text("Cancel",style: TextStyle(color: Colors.white),)),
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                            onPressed: (){}, child:Text("Accept",style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
Future alertbos(context,fun,String data,TextEditingController enter){
  return showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text('Alert',style: TextStyle(fontWeight: FontWeight.bold),),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Wants to  $data?'),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: (){
              Get.back();
            }, child: Text('Cancel',style: TextStyle(color: Colors.black),)),
            blockButton(
              width: Get.width * 0.3,
              widget: Text('Ok',style: TextStyle(color: Colors.white),),
              callback: (){
                Get.back();
                Get.to(fun);
              }
            )
          ],
        )
      ],
    );
  });
}
Future showALert(context,String title,address , mobile, time, date,){
  return showDialog(context: context, builder: (context){
    return AlertDialog(
      title:  Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Date:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: appcolor.blueColor),),
              Text(date,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Time:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: appcolor.blueColor),),

              Text(time,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Mobile Number:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: appcolor.blueColor),),

              Text(mobile,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Address:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: appcolor.blueColor),),
              SizedBox(width: 10,),
              Text(address,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
            ],
          ),
        ],

      ),
    actions: [
      SizedBox(
       width: Get.width,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: appcolor.blueColor
            ),
            onPressed: (){
        Get.back();
         }, child: Text('ok',style: TextStyle(color: Colors.white),)),
       )
      ],
    );


  });
}