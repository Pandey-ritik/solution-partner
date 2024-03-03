import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:solution_parnter/Widget/blockButton.dart';
import 'package:solution_parnter/Widget/customtextformfield.dart';
import 'package:solution_parnter/Widget/url_launch.dart';
import '../Screen/Drawer/revenue/mainpage.dart';
import '../Screen/Homepage.dart';
import 'Forgot_Password.dart';
import 'Pin_with_login.dart';
import 'Registration_Page.dart';




class Login_Page extends StatefulWidget {
  const Login_Page({super.key});
  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final callidController =  TextEditingController();
  var value = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            SizedBox(height: 40,),
            Center(
                child: Stack(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height*0.25,
                          child: Image.asset(image.logo,fit: BoxFit.contain,height:MediaQuery.of(context).size.height * 0.3 ,)),
                      language()
                    ],),
              //Text('Welcome \nBack',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
            ),
            SizedBox(height: 20,),
            Container(
              height: Get.height * 0.066,
              child: customtextformfield(
                key_type:  TextInputType.phone,
                hinttext: 'Mobile Number',
                maxLength: 10,suffixIcon: Icon(Icons.email)

              ),
            ),
            Container(
              height: Get.height * 0.066,
              child: customtextformfield(
                obsure: false,
                  hinttext: 'Password',
                  maxLength: 10,suffixIcon: Icon(Icons.lock)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  Get.to(Forgot_Password());
                }, child: Text('Forgot Password?',style: TextStyle(color: appcolor.blueColor),))
              ],
            ),
            SizedBox(height: 10,),
            blockButton(
                color: appcolor.greenColor,
              callback: (){
                  Get.to(MainPage());
              },
              widget: Text('Login',style: TextStyle(color: Colors.white),)
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 1,color: Colors.grey,width: Get.width *0.4,),
                SizedBox(width: 10,),
                Text('Or',style: TextStyle(color: Colors.black),),
                SizedBox(width: 10,),
                Container(height: 1,color: Colors.grey,width: Get.width *0.4,),
              ],
            ),
            SizedBox(height: 10,),
            blockButton(
                color: appcolor.blueColor,
                callback: (){
                  Get.to(LoginOtp());
                },
                widget: Text('Login with Pin',style: TextStyle(color: Colors.white),)
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?',style: TextStyle(color: Colors.black),),
                    TextButton(
                        onPressed: (){
                          Get.to(Registration_page());
                        },
                        child: Text('Sign Up',style: TextStyle(color: appcolor.blueColor),)
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){
                      showDialog(context: context, builder:(context){
                        return AlertDialog(
                          title: Center(child: Text("Diclaimers")),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Container(
                                  height: 1,
                                  width: MediaQuery.of(context).size.width,
                                  color: appcolor.blueColor,
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1. PayTm : Any Amount equal or above Rs. 1',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Text(
                                        '2. Bank Transfer : Any Amount equal or above\n   Rs.300 ',
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
                                        '1. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Text(
                                        '2. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Text(
                                        'End User Liscence Agreement',
                                        style: TextStyle(
                                            color: appcolor.blueColor,
                                            fontSize: 18
                                        ),
                                      ),
                                      Text(
                                        'To Know more About us please click on the button',
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
                          actions: [ blockButton(
                            width: Get.width,
                            callback: () {
                              // Get.to(aboutUs());
                              Navigator.pop(context);
                            },
                            widget: Center(
                              child: Text(
                                'Ok',
                                style: TextStyle(
                                    fontSize: 16,
                                    height: 1,color: Colors.white
                                ),
                              ),
                            ),
                          )],

                        );
                      });
                    }, child: Text('Terms and Condition')),
                    Container(height: 20,width: 2,color: Colors.grey,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: InkWell(
                          onTap: (){
                            showDialog(context: context, builder:(context){
                              return AlertDialog(
                                title: Center(child: Text("Privacy & Policy")),
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      Container(
                                        height: 1,
                                        width: MediaQuery.of(context).size.width,
                                        color: appcolor.blueColor,
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '1. PayTm : Any Amount equal or above Rs. 1',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Text(
                                              '2. Bank Transfer : Any Amount equal or above\n   Rs.300 ',
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
                                              '1. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Text(
                                              '2. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Text(
                                              'End User Liscence Agreement',
                                              style: TextStyle(
                                                  color: appcolor.blueColor,
                                                  fontSize: 18
                                              ),
                                            ),
                                            Text(
                                              'To Know more About us please click on the button',
                                              style: TextStyle(
                                                fontSize: 14,
                                                height: 1,
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                // Get.to(aboutUs());
                                                Navigator.pop(context);
                                              },
                                              child: Center(
                                                child: Text(
                                                  'Ok',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    height: 1,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                              );
                            });
                          },
                          child: Text("Privacy & Policy",style: TextStyle(color: appcolor.blueColor),)),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Call Us:'),
                    InkWell(
                        onTap: (){
                          launc().makePhoneCall('2345678904');
                        },
                        child: Text('+91 2345678904')),
                  ],
                )
              ],
            )
          ],
        ),
      );
  }
  Widget language(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Material(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(300),
              topLeft: Radius.circular(2)
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 0,left: 4,right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(2
                  ),
                  width: Get.width * 0.3,
                  height: Get.height * 0.035,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color:appcolor.blueColor
                    ),
                  ),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Language',

                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        height: 1,
                      ),
                    ),
                    value: value,
                    onChanged: (newValue) {
                      value = newValue;
                    },
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          'English',
                          style: TextStyle(
                              fontSize: 13
                          ),
                        ),
                        value: 1,
                      ),
                      DropdownMenuItem(
                          child: Text(
                            'हिन्दी',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 2),
                      DropdownMenuItem(
                          child: Text(
                            'ਪੰਜਾਬੀ',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 3),
                      DropdownMenuItem(
                          child: Text(
                            'ગુજરાતી',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 4),
                      DropdownMenuItem(
                          child: Text(
                            '𑘦𑘨𑘰𑘙𑘲',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 5),
                      DropdownMenuItem(
                          child: Text(
                            'ଓଡ଼ିଆ',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 6),
                      DropdownMenuItem(
                          child: Text(
                            'नेपाली',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 7),
                      DropdownMenuItem(
                          child: Text(
                            'संस्कृतम्',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 8),
                      DropdownMenuItem(
                          child: Text(
                            'Kurak',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 9),
                      DropdownMenuItem(
                          child: Text(
                            'অসমীয়া',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 10),
                      DropdownMenuItem(
                          child: Text(
                            'বাংলা',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 11),
                      DropdownMenuItem(
                          child: Text(
                            'बर',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 12),
                      DropdownMenuItem(
                          child: Text(
                            'डोगरी',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 13),
                      DropdownMenuItem(
                          child: Text(
                            'कॉशुर',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 14),
                      DropdownMenuItem(
                          child: Text(
                            'ಕನ್ನಡ',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 15),
                      DropdownMenuItem(
                          child: Text(
                            'कोंकणी',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 16),
                      DropdownMenuItem(
                          child: Text(
                            'मैथिली',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 17),
                      DropdownMenuItem(
                          child: Text(
                            'മലയാളം',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 18),
                      DropdownMenuItem(
                          child: Text(
                            'Meitei',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 19),
                      DropdownMenuItem(
                          child: Text(
                            'தமிழ்',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 20),
                      DropdownMenuItem(
                          child: Text(
                            'తెలుగు',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 21),
                      DropdownMenuItem(
                          child: Text(
                            'ᱥᱟᱱᱛᱟᱲᱤ',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 22),
                      DropdownMenuItem(
                          child: Text(
                            'ਸਿੰਧੀ',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 23),
                      DropdownMenuItem(
                          child: Text(
                            'اُردُو',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          value: 24),



                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
