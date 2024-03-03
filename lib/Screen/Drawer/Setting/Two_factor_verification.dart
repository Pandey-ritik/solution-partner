import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:solution_parnter/Content/color.dart';

class two_factor_verification extends StatefulWidget {
  const two_factor_verification({super.key});

  @override
  State<two_factor_verification> createState() => _two_factor_verificationState();
}

class _two_factor_verificationState extends State<two_factor_verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Get.height*0.3,),
            Center(
              child: CircleAvatar(
              radius: 30,
              backgroundColor: appcolor.blueColor,
              child: Icon(Icons.lock,color: Colors.yellow,size: 40,),
            ),),
            SizedBox(height: 10,),
            Text('How do you want to get your security codes?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center),
            SizedBox(height: 10,),
            Text('We recommend sending security code to your phone',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 16,color: Colors.grey),textAlign: TextAlign.center),
            SizedBox(height: 10,),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color:appcolor.blueColor,width: 1),
                  shape: BeveledRectangleBorder()
              ),
                onPressed: (){
                Get.to(entermobile());
                }, child: Text('Text Message',style: TextStyle(color: appcolor.blueColor),)),
            SizedBox(height: 10,),
            TextButton(onPressed: (){
              Get.to(entermobile());
            }, child: Text('Phone Call',style: TextStyle(color: appcolor.blueColor),))

          ],
        ),
      ),
    );
  }
}
class entermobile extends StatefulWidget {
  const entermobile({super.key});

  @override
  State<entermobile> createState() => _entermobileState();
}

class _entermobileState extends State<entermobile> {
  TextEditingController mobileno = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        },icon: Icon(Icons.arrow_back_ios,color: appcolor.blueColor,),),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Get.height*0.1,),
            Center(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: appcolor.blueColor,
                child: Icon(Icons.lock,color: Colors.yellow,size: 40,),
              ),),
            SizedBox(height: 10,),
            Text('Enter your phone number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Text('Must be IND-based number.Data rates may be apply',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15,color: Colors.grey),textAlign: TextAlign.center),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: mobileno,
                maxLength: 10,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: appcolor.blueColor)),
                  hintText: 'Enter phone number'
                ),
              ),
            ),
            SizedBox(height: 10,),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color:appcolor.blueColor,),
                    shape: BeveledRectangleBorder(
                       )
                ),
                onPressed: (){
                  if(mobileno.text.toString()!=''){
                    Get.to(verifyotp(mobile: mobileno.text.toString(),));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please Enter your Mobile Number')));
                  }
                }, child: Text('Send Code',style: TextStyle(color: appcolor.blueColor),)),
            SizedBox(height: 10,),
            TextButton(onPressed: (){}, child: Text('Contact Support',style: TextStyle(color: appcolor.blueColor),))

          ],
        ),
      ),
    );
  }
}
class verifyotp extends StatefulWidget {
  final mobile;
  const verifyotp({super.key, this.mobile});

  @override
  State<verifyotp> createState() => _verifyotpState();
}

class _verifyotpState extends State<verifyotp> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        },icon: Icon(Icons.arrow_back_ios,color: appcolor.blueColor,),),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Get.height*0.15,),
            Center(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: appcolor.blueColor,
                child: Icon(Icons.lock,color: Colors.yellow,size: 40,),
              ),),
            SizedBox(height: 10,),
            Text('Enter your Code',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center),
            SizedBox(height: 10,),
            Text('We sent a code to ${widget.mobile}',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14,color: Colors.grey),textAlign: TextAlign.center),
            SizedBox(height: 10,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Directionality(
                  // Specify direction if desired
                  textDirection: TextDirection.ltr,
                  child: Pinput(
                    controller: pinController,
                    focusNode: focusNode,
                    androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsUserConsentApi,
                    listenForMultipleSmsOnAndroid: true,
                    //defaultPinTheme: defaultPinTheme,
                    separatorBuilder: (index) => const SizedBox(width: 8),
                    validator: (value) {
                      return value == '2222' ? null : 'PIN is incorrect';
                    },
                    // onClipboardFound: (value) {
                    //   debugPrint('onClipboardFound: $value');
                    //   pinController.setText(value);
                    // },
                    hapticFeedbackType: HapticFeedbackType.lightImpact,
                    onCompleted: (pin) {
                      debugPrint('onCompleted: $pin');
                    },
                    onChanged: (value) {
                      debugPrint('onChanged: $value');
                    },
                    cursor: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 9),
                          width: 22,
                          height: 1,
                          // color: focusedBorderColor,
                        ),
                      ],
                    ),
                    // focusedPinTheme: defaultPinTheme.copyWith(
                    //   decoration: defaultPinTheme.decoration!.copyWith(
                    //     borderRadius: BorderRadius.circular(8),
                    //     border: Border.all(color: focusedBorderColor),
                    //   ),
                    // ),
                    // submittedPinTheme: defaultPinTheme.copyWith(
                    //   decoration: defaultPinTheme.decoration!.copyWith(
                    //     color: fillColor,
                    //     borderRadius: BorderRadius.circular(19),
                    //     border: Border.all(color: focusedBorderColor),
                    //   ),
                    // ),
                    // errorPinTheme: defaultPinTheme.copyBorderWith(
                    //   border: Border.all(color: Colors.redAccent),
                    // ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color:appcolor.blueColor,),
                    shape: BeveledRectangleBorder(
                    )
                ),
                onPressed: (){}, child: Text('Verify',style: TextStyle(color: appcolor.blueColor),)),
            // SizedBox(height: 10,),
            // TextButton(onPressed: (){}, child: Text('Phone Call',style: TextStyle(color: appcolor.blueColor),))

          ],
        ),
      ),
    );
  }
}


