import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import '../../Drawer/schedule.dart';
import 'call_page.dart';
import 'constants.dart';
import 'login_page.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePages> {
  final callIDTextCtrl = TextEditingController(text: 'call_id');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

        ),
        backgroundColor: Colors.white,
        body: WillPopScope(
          onWillPop: () async {
            Get.offAll(LoginPage());
            return true;
          },
          child: Column(
            children: [
              // Positioned(
              //   top: 20,
              //   right: 10,
              //   child: logoutButton(),
              // ),
              Image.asset(image.logo),
              SizedBox(height: Get.height*0.1,),

              Center(child: Text('Your Phone Number: ${currentUser.id}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)),
              SizedBox(height: Get.height*0.09,),
              joinCallContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget logoutButton() {
    return Ink(
      width: 35,
      height: 35,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.redAccent,
      ),
      child: IconButton(
        icon: const Icon(Icons.exit_to_app_sharp),
        iconSize: 20,
        color: Colors.white,
        onPressed: () async {
          final prefs = await SharedPreferences.getInstance();
          prefs.remove(cacheUserIDKey);

          Navigator.pushNamed(
            context,
            PageRouteNames.login,
          );
        },
      ),
    );
  }

  Widget joinCallContainer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextFormField(
                controller: callIDTextCtrl,
                decoration: const InputDecoration(
                  labelText: 'join a call by id',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (ZegoUIKitPrebuiltCallController().minimize.isMinimizing) {
                  ///// when the application is minimized (in a minimized state),
                  ///// disable button clicks to prevent multiple PrebuiltCall components from being created.
                  return;
                }
                Get.to(CallPage(),arguments: <String, String>{
                  PageParam.call_id: callIDTextCtrl.text.trim(),
                });
                },
              child: const Text('join'),
            ),
          ],
        ),
      ),
    );
  }
}
