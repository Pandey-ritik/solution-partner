import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {

  final Widget smallScreen;
  final Widget mediumScreen;
  final Widget largescreen;

  const Responsive({super.key ,required this.smallScreen,required this.mediumScreen,required this.largescreen});

  static bool issmallscreen(BuildContext context){
    return MediaQuery.of(context).size.width>100;
  }
  static bool ismediumscreen(BuildContext context){
    return MediaQuery.of(context).size.width>=800 && MediaQuery.of(context).size.width<=1200;
  }
  static bool islargescreen(BuildContext context){
    return MediaQuery.of(context).size.width>1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context ,constraints){
          if(constraints.maxWidth>1200){
            return largescreen;
          }else if(constraints.maxWidth<=1200 && constraints.maxWidth>=100){
            return mediumScreen;
          }else{
            return smallScreen;
          }
    });
  }
}
