import 'package:flutter/material.dart';
import 'package:solution_parnter/Content/color.dart';

class autoupdate extends StatefulWidget {
  const autoupdate({super.key});

  @override
  State<autoupdate> createState() => _autoupdateState();
}

class _autoupdateState extends State<autoupdate> {
  bool isSelected = false;
  void toggleSwitch(bool value){
    setState(() {
      isSelected=!isSelected;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App update setting'),
      ),
      body:Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Auto Update app ',style: TextStyle(fontWeight: FontWeight.w600),),
                Switch(value: isSelected , onChanged: toggleSwitch,activeColor: appcolor.blueColor,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
