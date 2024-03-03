import 'package:flutter/material.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';

class block extends StatefulWidget {
  const block({super.key});

  @override
  State<block> createState() => _FollowersState();
}

class _FollowersState extends State<block> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Block'),
      ),
      body: Column(
        children: [
          Follower('Nisha','${image.postImage2}'),
          SizedBox(height: 10,),
          Follower('Rahul','${image.postImage1}'),
          SizedBox(height: 10,),
          Follower('Abhishek','${image.profileImage}'),
          SizedBox(height: 10,),
          Follower('Sanjay','${image.postImage3}')
        ],
      ),
    );
  }
}
Widget Follower(String text, Image, ){
  return ListTile(
    title: Text(text,style: TextStyle(fontSize: 14),),
    leading: CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage('$Image'),
    ),
    trailing: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: appcolor.blueColor
      ),
      onPressed: (){},child: Text('Unblock',style: TextStyle(color: Colors.white),),),
  );
}
