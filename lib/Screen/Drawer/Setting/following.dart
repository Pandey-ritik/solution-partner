import 'package:flutter/material.dart';
import 'package:solution_parnter/Content/image.dart';

class Followers extends StatefulWidget {
  const Followers({super.key});

  @override
  State<Followers> createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Following'),
      ),
      body: Column(
        children: [
          Follower('Nisha','${image.postImage1}'),
          SizedBox(height: 10,),
          Follower('Rahul','${image.profileImage}'),
          SizedBox(height: 10,),
          Follower('Abhishek','${image.postImage2}'),
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
    trailing: TextButton(onPressed: (){},child: Text('Remove'),),
  );
}
