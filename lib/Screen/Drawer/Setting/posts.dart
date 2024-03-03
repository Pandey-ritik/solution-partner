import 'package:flutter/material.dart';
import 'package:get/get.dart';

class posts extends StatefulWidget {
  const posts({super.key});

  @override
  State<posts> createState() => _postsState();
}

class _postsState extends State<posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: (){
            Get.to(privacy_post());
            },
            title: Text('Who can see your future posts?',style: TextStyle(fontWeight: FontWeight.w600),),
            subtitle: Text('Friends'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          )
        ],
      ),
    );
  }
}
class privacy_post extends StatefulWidget {
  const privacy_post({super.key});

  @override
  State<privacy_post> createState() => _privacy_postState();
}

class _privacy_postState extends State<privacy_post> {
  int selectedValue = 1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Who can see your future posts?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
           SizedBox(height: 10,),
            Text('You can manage the privacy of things you share by using the audience selector right where right you post.This control remembers your your selectio so future posts from this tool will be shared with the same audience unless change it.',style: TextStyle(fontWeight: FontWeight.w600),),
            SizedBox(height: 20,),
            Text('Choose a Different Audience',style: TextStyle(fontWeight: FontWeight.bold),),
            RadioListTile<int>(
              title: Text('Public',style: TextStyle(fontWeight: FontWeight.w600),),
              value: 1,
              groupValue: selectedValue,
              onChanged: ( value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            RadioListTile<int>(
              title: Text('Friends',style: TextStyle(fontWeight: FontWeight.w600),),

              value: 2,
              groupValue: selectedValue,
              onChanged: ( value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            RadioListTile<int>(
              title: Text('Only Me',style: TextStyle(fontWeight: FontWeight.w600),),

              value: 3,
              groupValue: selectedValue,
              onChanged: ( value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

