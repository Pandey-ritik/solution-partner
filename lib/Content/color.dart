
import 'package:flutter/material.dart';

class appcolor {

  static final Color greenColor = Color(0xff53AE4E);
  static final Color blueColor = Color(0xff1064BA);
  static final Color black = Colors.black;
  static final Color greyColor = Color(0xffEEEEEE);
  static final Color borderColor = Colors.black;
  static final Color SufixIconColor = Color(0xff53AE4E);
  static final Color newRedColor = Color(0xffDD2B1C);
  static final LinearGradient gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    // stops: [0.9,0.1],
    colors: [
      Color(0xff1064BA),
      Color(0xff53AE4E),
    ],
  );
  static final LinearGradient voidGradient = LinearGradient(
    // stops: [0.9,0.1],
    colors: [
      Colors.black,

    ],
  );
}
