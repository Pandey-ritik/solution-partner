import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';

import '../Widget/blockButton.dart';
import '../Widget/customtextformfield.dart';

class Registration_page extends StatefulWidget {
  const Registration_page({super.key});

  @override
  State<Registration_page> createState() => _Registration_pageState();
}

class _Registration_pageState extends State<Registration_page> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
                child: Stack(
              children: [
                Image.asset(
                  image.logo,
                  fit: BoxFit.contain,
                  height: Get.height * 0.25,
                ),
                Center(
                    child: Text(
                  'Registration by Expert'.tr,
                  style: TextStyle(
                      color: appcolor.blueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))
              ],
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: Get.height * 0.066,
              child: customtextformfield(
                  textCapitalization: true,
                  key_type: TextInputType.visiblePassword,
                  hinttext: 'First Name'.tr,
                  suffixIcon: Icon(Icons.email)),
            ),
            Container(
              height: Get.height * 0.066,
              child: customtextformfield(
                  key_type: TextInputType.visiblePassword,
                  hinttext: 'Last Name'.tr,
                  suffixIcon: Icon(Icons.email)),
            ),

            Container(
              height: Get.height * 0.066,
              child: customtextformfield(
                  key_type: TextInputType.phone,
                  hinttext: 'Mobile Number'.tr,
                  maxLength: 10,
                  suffixIcon: Icon(Icons.email)),
            ),
            Container(
              height: Get.height * 0.066,
              child: customtextformfield(
                  key_type: TextInputType.visiblePassword,
                  hinttext: 'Profession'.tr,
                  suffixIcon: Icon(Icons.email)),
            ),
            Container(
              height: Get.height * 0.066,
              child: customtextformfield(
                  obsure: false,
                  hinttext: 'Password'.tr,
                  suffixIcon: Icon(Icons.lock)),
            ),
            Container(
              height: Get.height * 0.066,
              child: customtextformfield(
                  obsure: false,
                  hinttext: 'Confirm Password'.tr,
                  suffixIcon: Icon(Icons.lock)),
            ),
            SizedBox(),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: appcolor.blueColor,
                  value: isSelected,
                  onChanged: (bool? value) {
                    setState(() {
                      isSelected = value!;
                    });
                  },
                ),
                Row(
                  children: [
                    Text('I Agree with'.tr),
                    TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 1,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        color: appcolor.blueColor,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '1. PayTm : Any Amount equal or above Rs. 1'
                                                  .tr,
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Text(
                                              '2. Bank Transfer : Any Amount equal or above\n   Rs.300 '
                                                  .tr,
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Text(
                                              'Disclaimers',
                                              style: TextStyle(
                                                color: appcolor.blueColor,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              '1. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, '
                                                  .tr,
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Text(
                                              '2. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, '
                                                  .tr,
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Text(
                                              'End User Liscence Agreement'.tr,
                                              style: TextStyle(
                                                  color: appcolor.blueColor,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              'To Know more About us please click on the button'
                                                  .tr,
                                              style: TextStyle(
                                                fontSize: 14,
                                                height: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                actions: [
                                  Container(
                                    height: Get.height * 0.055,
                                    child: blockButton(
                                      callback: () {
                                        setState(() {
                                          isSelected = true;
                                        });
                                        Get.back();
                                      },
                                      width: Get.width * 0.9,
                                      widget: Text(
                                        'Ok',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            height: 1.2),
                                      ),
                                      verticalPadding: 3,
                                    ),
                                  ),
                                ],
                              );
                            });
                      },
                      child: Text('Term & Condition'.tr),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            blockButton(
                color: appcolor.greenColor,
                callback: () {},
                widget: Text(
                  'Sign Up'.tr,
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  color: Colors.grey,
                  width: Get.width * 0.4,
                ),
                Text(
                  'Or'.tr,
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                  width: Get.width * 0.4,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // Row(
            //   children: [
            //     Text('I have already registration'),
            //     Text('Click here'),
            //   ],
            // ),
            blockButton(
                callback: () {
                  Get.back();
                },
                widget: Text(
                  'Login'.tr,
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
