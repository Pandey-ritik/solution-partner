import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:solution_parnter/auth/Login_Page.dart';

import '../Widget/blockButton.dart';
import '../Widget/customtextformfield.dart';

class Forgot_Password extends StatefulWidget {
  const Forgot_Password({super.key});
  @override
  State<Forgot_Password> createState() => _Forgot_PasswordState();
}

class _Forgot_PasswordState extends State<Forgot_Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(
                child: Image.asset(image.logo,fit: BoxFit.contain,height: Get.height * 0.4 ,)
              //Text('Welcome \nBack',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
            ),
            SizedBox(height: 40,),
            Container(
              height: Get.height * 0.066,
              child: customtextformfield(
                  key_type:  TextInputType.phone,
                  hinttext: 'Mobile Number'.tr,
                  maxLength: 10,
                  suffixIcon: Icon(Icons.email)
              ),
            ),
            SizedBox(height: 10,),
            blockButton(
                color: appcolor.greenColor,
                callback: (){
                  Get.to(OTPScreen());
                },
                widget: Text('Send OTP'.tr,style: TextStyle(color: Colors.white),)
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Center(
                child: Image.asset(image.logo,fit: BoxFit.contain,height: Get.height * 0.35 ,)
              //Text('Welcome \nBack',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
            ),
            SizedBox(height: 20,),
        Container(
          height: Get.height * 0.31,
          width: Get.width,
          child:   Container(
            height: MediaQuery.of(context).size.height * 0.6,
            // margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(11),
                    topRight: Radius.circular(11))),
            child: Padding(
              padding: EdgeInsets.only(left: 12.0,right: 12.0,top: 12.0,bottom: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'OTP VERIFICATION'.tr,
                    style: TextStyle(
                        color: Color.fromRGBO(53, 53, 52, 1),
                        fontSize: 24,
                        fontFamily: 'Nunito-Regular.ttf',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Verify Your Mobile Number'.tr,
                    style: TextStyle(
                        color: Color.fromRGBO(53, 53, 52, 1),
                        fontSize: 16,
                        fontFamily: 'Nunito-Regular.ttf',
                        fontWeight: FontWeight.w400),
                  ),

                  Text(
                    'Verify your mobile number'.tr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'nunito'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Pinput(
                    androidSmsAutofillMethod:  AndroidSmsAutofillMethod.smsUserConsentApi,
                    length: 6,
                    showCursor: true,
                    onCompleted: (pin) {
                      setState(() {
                        // Matchs  = pin;
                        // print('sdf$Match');
                      });

                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                    maxLines: 2,
                    text: TextSpan(
                      text: 'Dont receive OTP '.tr,style: TextStyle(color: Colors.black),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Resend',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                ],
              ),
            ),
          ),

        ),

            SizedBox(height: 10,),
            blockButton(
                color: appcolor.greenColor,
                callback: (){
                  Get.to(ChagePassword());
                },
                widget: Text('Verify OTP'.tr,style: TextStyle(color: Colors.white),)
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
class ChagePassword extends StatefulWidget {
  const ChagePassword({super.key});

  @override
  State<ChagePassword> createState() => _ChagePasswordState();
}

class _ChagePasswordState extends State<ChagePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(
                child: Image.asset(image.logo,fit: BoxFit.contain,height: Get.height * 0.4 ,)
              //Text('Welcome \nBack',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
            ),
            SizedBox(height: 40,),
            Container(
              height: Get.height * 0.066,
              child: customtextformfield(
                  key_type:  TextInputType.phone,
                  hinttext: 'New Password'.tr,
                  maxLength: 10,
                  suffixIcon: Icon(Icons.email)
              ),
            ),
            Container(
              height: Get.height * 0.066,
              child: customtextformfield(
                  key_type:  TextInputType.phone,
                  hinttext: 'Conform Password'.tr,
                  maxLength: 10,
                  suffixIcon: Icon(Icons.email)
              ),
            ),

            SizedBox(height: 10,),
            blockButton(
                color: appcolor.greenColor,
                callback: (){
                  Get.off(Login_Page());
                },
                widget: Text('Submit'.tr,style: TextStyle(color: Colors.white),)
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}


