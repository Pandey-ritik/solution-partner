import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Screen/Drawer/Setting/personal_info.dart';
import 'package:solution_parnter/Screen/Drawer/Setting/posts.dart';
import 'package:solution_parnter/Screen/Drawer/Setting/privacy_policy.dart';
import 'package:solution_parnter/Screen/Drawer/Setting/update.dart';
import 'package:solution_parnter/Widget/blockButton.dart';
import '../forgotPin.dart';
import '../language.dart';
import 'Two_factor_verification.dart';
import 'blockering.dart';
import 'following.dart';

class firstui_Setting extends StatefulWidget {
  const firstui_Setting({super.key});

  @override
  State<firstui_Setting> createState() => _firstui_SettingState();
}

class _firstui_SettingState extends State<firstui_Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: appcolor.blueColor),),
                      Text('Update your info to keep uour account secure.',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 13),),
                      SizedBox(height: 20,),
                      multiple(icon:FontAwesomeIcons.user,data: 'Personal and Account info',callback: (){
                        Get.to(personal_info());
                      },),
                      SizedBox(height: 20,),
                      multiple(icon:FontAwesomeIcons.shieldHalved,data: 'Password and Security',callback: (){
                        Get.to(ForgotPinScreen());
                      },),
                      SizedBox(height: 20,),
                      multiple(icon:FontAwesomeIcons.wallet,data: 'Payment',callback: (){
                      //  Get.to(ForgotPinScreen());
                      },),
                      SizedBox(height: 20,),
                      multiple(icon:FontAwesomeIcons.lock,data: 'Two Factor Verfication',callback: (){
                          Get.to(two_factor_verification());
                      },),
                      Container(
                        width: Get.width,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Preferences',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: appcolor.blueColor),),
                      Text('Customize your experience on SolutionKey',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 13),),
                      SizedBox(height: 20,),
                      multiple(
                        icon:FontAwesomeIcons.language,data: 'Language',callback: (){
                        Get.to(LanguageScreen());
                      },),
                      SizedBox(height: 20,),
                      multiple(icon:FontAwesomeIcons.arrowsRotate,data: 'SolutionKey Update',callback: (){
                        Get.to(autoupdate());
                      },),
                      Container(
                        width: Get.width,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Audience and visibility',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: appcolor.blueColor),),
                      Text('Control who can see what you share on SolutionKey',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 13),),
                      SizedBox(height: 20,),
                      multiple(icon:FontAwesomeIcons.signsPost,data: 'Posts',callback: (){
                        Get.to(posts());                    },),
                      SizedBox(height: 20,),
                      multiple(icon:FontAwesomeIcons.userPlus,data: 'Following ',callback: (){
                        Get.to(Followers());
                      },),
                      SizedBox(height: 20,),
                      multiple(icon:FontAwesomeIcons.userLock,data: 'Blocking',callback: (){
                        Get.to(block());
                      },),
                      SizedBox(height: 20,),
                      multiple(icon:FontAwesomeIcons.shieldHalved,data: 'Privacy & Policy',callback: (){
                        Get.to(Privcay_Policy());
                      },),
                      SizedBox(height: 20,),
                      multiple(icon:FontAwesomeIcons.trash,data: 'Delete Account',callback: (){
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: Text('Alert',style: TextStyle(fontWeight: FontWeight.bold),),
                            content: Text('Are you sure delete your account ?'),
                            actions: [
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(onPressed: (){
                                    Get.back();
                                  }, child: Text('Cancel',style: TextStyle(color: Colors.black),)),
                                  blockButton(
                                    widget: Text('Ok',style: TextStyle(color: Colors.white),),
                                    width: Get.width*0.3,
                                    callback: (){
                                      Get.back();
                                    }
                                  )
                                ],
                              )
                            ],
                          );
                        });
                      },),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget multiple({
    icon, data, Function()? callback}){
    return InkWell(
      onTap: callback,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon),
          SizedBox(width: 10,),
          Text(data, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}
