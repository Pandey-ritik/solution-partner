

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:solution_parnter/Content/utali.dart';
import 'package:solution_parnter/Widget/blockButton.dart';
import 'package:solution_parnter/main.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import '../Drawer/schedule.dart';


// class CallPage extends StatefulWidget {
//   const CallPage({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => CallPageState();
// }
//
// class CallPageState extends State<CallPage> {
//   @override
//   Widget build(BuildContext context) {
//     final arguments = (ModalRoute.of(context)?.settings.arguments ??
//         <String, String>{}) as Map<String, String>;
//     final callID = arguments[PageParam.call_id] ?? '';
//
//     return SafeArea(
//       child: ZegoUIKitPrebuiltCall(
//         appID: yourAppID /*input your AppID*/,
//         appSign: yourAppSign /*input your AppSign*/,
//         userID: currentUser.id,
//         userName: currentUser.name,
//         callID: callID,
//         config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
//
//         /// support minimizing
//           ..topMenuBarConfig.isVisible = true
//           ..topMenuBarConfig.buttons = [
//             ZegoMenuBarButtonName.minimizingButton,
//             ZegoMenuBarButtonName.showMemberListButton,
//           ]
//           ..avatarBuilder = customAvatarBuilder,
//       ),
//     );
//   }
// }

class calling extends StatelessWidget {
  final String callid;

  const calling({super.key, required this.callid});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ZegoUIKitPrebuiltCall(
          appID: Utils.appid,
          appSign: Utils.appSingIn,
          userID: localuserid,
          callID: callid,
          userName: 'user_$localuserid',
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall()..audioVideoContainerBuilder
      /// support minimizing
        ..topMenuBarConfig.isVisible = true
        ..topMenuBarConfig.buttons = [
          ZegoMenuBarButtonName.minimizingButton,
          ZegoMenuBarButtonName.showMemberListButton,
        ]
    ));
  }
}



class VngTestScreen1 extends StatelessWidget {
  const VngTestScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('SolutionKey',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed:() {
          Navigator.pop(context);
        }, icon:Icon(Icons.navigate_before,color: Colors.black,size: 35,)),
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text("Please Focus on the camera while looking to the Screen",textAlign: TextAlign.center,style: TextStyle(fontSize: 18, color: appcolor.blueColor),),
          ),
          SizedBox(
            height: 200,
          ),
          blockButton(widget: Text("Start",style: TextStyle(color: Colors.white),), width: 320, callback: (){
           Get.off(VNGTEST());
            // Navigator.of(context).push(MaterialPageRoute(builder:(context) => VNGTEST(),));
          })
        ],
      ),
    );
  }
}


class VNGTEST extends StatefulWidget {
  @override
  _VNGTESTState createState() => _VNGTESTState();
}

class _VNGTESTState extends State<VNGTEST> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // Initialize the camera
    _initializeControllerFuture = initCameraController();
  }

  Future<void> initCameraController() async {
    final cameras = await availableCameras();
    _controller = CameraController(cameras[1], ResolutionPreset.medium);
    return _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          RotationTransition(
            turns:AlwaysStoppedAnimation(360/360),
            child: Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff7ACAEB), Color(0xff01A0E2)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [0.4, 0.7],
                  tileMode: TileMode.repeated,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: Get.height*0.2,),
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(image.profileImage),
                  ),
                  SizedBox(height: 20,),
                  Text('Calling...',style: TextStyle(color: Colors.white,fontSize: 15),),
                  SizedBox(height: 10,),
                  Text('Abhishek',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: Get.height *0.3,),
                ],
              ),
            ),
          ),
          // Camera Preview in the corner
          Positioned(
            bottom: 10.0,
            right: 10.0,
            width: 150.0,
            height: 150.0,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2.0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              // Camera Preview
              child: FutureBuilder<void>(
                future: _initializeControllerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return CameraPreview(_controller);
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              left: Get.width*0.3,
              child: InkWell(
                onTap: (){
                  Get.off(Schedule());
                },
                child: CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue[800],
                    radius: 35,
                    child: Center(child: Icon(Icons.call_end,color: Colors.white,)),
                  ),
                ),
              ),),
        ],
      ),
    );
  }
}
