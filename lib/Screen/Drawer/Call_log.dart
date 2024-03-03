import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/color.dart';
import '../call_video/chat.dart';

class callLog extends StatefulWidget {
  const callLog({super.key});

  @override
  State<callLog> createState() => _callLogState();
}

class _callLogState extends State<callLog> {
  List callLogData = [
    {
      "image":'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOfthyCMti69NKZPypJi6MQIwy9higVvWtvLfpsw_Wow',
      "date":"10-11-2023,09;40AM",
      "id":"4567890",
      "name":"Sanjay",
      "check":"Incoming"
    },
    {
      "image":'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo9jJkkYHJyUzYH3Rnav-ZohJrwmki3bxxBf5YbwWwig&s',
      "date":"10-11-2023,09;40AM",
      "id":"4567890",
      "name":"Saurbh",
      "check":"Incoming"
    },
    {
      "image":'https://www.pngguru.in/storage/uploads/images/Colourful%20leaf%20free%20png%20image%20download_1650276218_354457338.webp',
      "date":"10-11-2023,09;40AM",
      "id":"4567890",
      "name":"Nidhi",
      "check":"Incoming"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Log'),
        actions: [
          IconButton(onPressed: (){
            Get.to(chatbox());
          }, icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
Expanded(child: ListView.builder(
    itemCount: callLogData.length,
    itemBuilder: (context,index){
      var data = callLogData[index];
      return Card(
        child: ListTile(

          leading: Container(
            height: Get.height,
            width: 80,
            child: Image.network('${data['image'].toString()}',fit: BoxFit.cover,),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text(data['date'].toString(),style: TextStyle(color: Colors.grey,fontSize: 12),),
                  CircleAvatar(
                    backgroundColor: appcolor.blueColor,
                      radius: 14,
                      child: Icon(FontAwesomeIcons.ellipsisVertical,color: Colors.white,),)
                ],
              ),
              Text(data['id'].toString(),style: TextStyle(color: Colors.black,fontSize: 14),),
              Text(data['name'].toString(),style: TextStyle(color: Colors.black,fontSize: 14),),
              Text(data['check'].toString(),style: TextStyle(color: Colors.grey,fontSize: 12),),
            ],
          ),
        ),
      );

}))
        ],
      ),
    );
  }
}
