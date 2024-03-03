import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';
import 'Registration_Page.dart';

class LoginOtp extends StatefulWidget {
  const LoginOtp({super.key});

  @override
  State<LoginOtp> createState() => _LoginOtpState();
}

class _LoginOtpState extends State<LoginOtp> {
  bool passwordVisible = false;

  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.height,
                child: Image.asset(
                  image.logo,
                  fit: BoxFit.contain,
                )),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Login with your PIN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: appcolor.blueColor),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPinScreen()));
                    },
                    child: Text("Forgot Your PIN?"))
              ],
            ),
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
                          color: focusedBorderColor,
                        ),
                      ],
                    ),
                    focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    submittedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        color: fillColor,
                        borderRadius: BorderRadius.circular(19),
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    errorPinTheme: defaultPinTheme.copyBorderWith(
                      border: Border.all(color: Colors.redAccent),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 60,
                    width: 170,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        //<-- SEE HERE
                        side: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      color: Colors.grey.shade300,
                      child: Center(
                          child: Text("Go Back",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder:(context)=>MainPage()));
                  },
                  child: Container(
                    height: 60,
                    width: 170,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        //<-- SEE HERE
                        side: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      color: appcolor.greenColor,
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registration_page()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: appcolor.blueColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            // Column(
            //   children: [
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(right: 12),
            //           child: InkWell(
            //               onTap: (){
            //                 showDialog(context: context, builder:(context){
            //                   return AlertDialog(
            //                     title: Center(child: Text("Terms & Conditions")),
            //                     content: SingleChildScrollView(
            //                       child: Column(
            //                         crossAxisAlignment: CrossAxisAlignment.center,
            //                         children: [
            //
            //                           Container(
            //                             height: 1,
            //                             width: MediaQuery.of(context).size.width,
            //                             color: appcolor.appcolors,
            //                           ),
            //                           SizedBox(height: 10,),
            //                           Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10),
            //                             child: Column(
            //                               crossAxisAlignment: CrossAxisAlignment.start,
            //                               children: [
            //                                 Text(
            //                                   '1. PayTm : Any Amount equal or above Rs. 1',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   '2. Bank Transfer : Any Amount equal or above\n   Rs.300 ',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   'T&C',
            //                                   style: TextStyle(
            //                                     color: appcolor.newRedColor,
            //                                     fontSize: 18,
            //                                   ),
            //                                 ),
            //                                 Text(
            //                                   '1. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   '2. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   'End User Liscence Agreement',
            //                                   style: TextStyle(
            //                                       color: appcolor.newRedColor,
            //                                       fontSize: 18
            //                                   ),
            //                                 ),
            //                                 Text(
            //                                   'To Know more About us please click on the button',
            //                                   style: TextStyle(
            //                                     fontSize: 14,
            //                                     height: 1,
            //                                   ),
            //                                 ),
            //                                 TextButton(
            //                                   onPressed: () {
            //                                     // Get.to(aboutUs());
            //                                     Navigator.pop(context);
            //                                   },
            //                                   child: Center(
            //                                     child: Text(
            //                                       'Ok',
            //                                       style: TextStyle(
            //                                         fontSize: 16,
            //                                         height: 1,
            //                                       ),
            //                                     ),
            //                                   ),
            //                                 )
            //                               ],
            //                             ),
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //                   );
            //                 });
            //               },
            //               child: Text("Terms & Conditions")),
            //         ),
            //         Container(height: 20,width: 2,color: Colors.grey,),
            //         Padding(
            //           padding: const EdgeInsets.only(left: 12,right: 11),
            //           child: InkWell(
            //               onTap: (){
            //                 showDialog(context: context, builder:(context){
            //                   return AlertDialog(
            //                     title: Center(child: Text("Privacy Policy")),
            //                     content: SingleChildScrollView(
            //                       child: Column(
            //                         crossAxisAlignment: CrossAxisAlignment.center,
            //                         children: [
            //
            //                           Container(
            //                             height: 1,
            //                             width: MediaQuery.of(context).size.width,
            //                             color: appcolor.appcolors,
            //                           ),
            //                           SizedBox(height: 10,),
            //                           Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10),
            //                             child: Column(
            //                               crossAxisAlignment: CrossAxisAlignment.start,
            //                               children: [
            //                                 Text(
            //                                   '1. PayTm : Any Amount equal or above Rs. 1',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   '2. Bank Transfer : Any Amount equal or above\n   Rs.300 ',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   'Policies',
            //                                   style: TextStyle(
            //                                     color: appcolor.appcolors,
            //                                     fontSize: 18,
            //                                   ),
            //                                 ),
            //                                 Text(
            //                                   '1. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   '2. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   'End User Liscence Agreement',
            //                                   style: TextStyle(
            //                                       color: appcolor.appcolors,
            //                                       fontSize: 18
            //                                   ),
            //                                 ),
            //                                 Text(
            //                                   'To Know more About us please click on the button',
            //                                   style: TextStyle(
            //                                     fontSize: 14,
            //                                     height: 1,
            //                                   ),
            //                                 ),
            //                                 TextButton(
            //                                   onPressed: () {
            //                                     // Get.to(aboutUs());
            //                                     Navigator.pop(context);
            //                                   },
            //                                   child: Center(
            //                                     child: Text(
            //                                       'Ok',
            //                                       style: TextStyle(
            //                                         fontSize: 16,
            //                                         height: 1,
            //                                       ),
            //                                     ),
            //                                   ),
            //                                 )
            //                               ],
            //                             ),
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //
            //                   );
            //                 });
            //               },
            //               child: Text("Privacy Policy")),
            //         )
            //       ],),
            //     SizedBox(height: 10,),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(right: 12),
            //           child: InkWell(
            //               onTap: (){
            //                 showDialog(context: context, builder:(context){
            //                   return AlertDialog(
            //                     title: Center(child: Text("Cookies Policy")),
            //                     content: SingleChildScrollView(
            //                       child: Column(
            //                         crossAxisAlignment: CrossAxisAlignment.center,
            //                         children: [
            //
            //                           Container(
            //                             height: 1,
            //                             width: MediaQuery.of(context).size.width,
            //                             color: appcolor.blueColor,
            //                           ),
            //                           SizedBox(height: 10,),
            //                           Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10),
            //                             child: Column(
            //                               crossAxisAlignment: CrossAxisAlignment.start,
            //                               children: [
            //                                 Text(
            //                                   '1. PayTm : Any Amount equal or above Rs. 1',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   '2. Bank Transfer : Any Amount equal or above\n   Rs.300 ',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   'Policies',
            //                                   style: TextStyle(
            //                                     color: appcolor.appcolors,
            //                                     fontSize: 18,
            //                                   ),
            //                                 ),
            //                                 Text(
            //                                   '1. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   '2. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   'End User Liscence Agreement',
            //                                   style: TextStyle(
            //                                       color: appcolor.appcolors,
            //                                       fontSize: 18
            //                                   ),
            //                                 ),
            //                                 Text(
            //                                   'To Know more About us please click on the button',
            //                                   style: TextStyle(
            //                                     fontSize: 14,
            //                                     height: 1,
            //                                   ),
            //                                 ),
            //                                 TextButton(
            //                                   onPressed: () {
            //                                     // Get.to(aboutUs());
            //                                     Navigator.pop(context);
            //                                   },
            //                                   child: Center(
            //                                     child: Text(
            //                                       'Ok',
            //                                       style: TextStyle(
            //                                         fontSize: 16,
            //                                         height: 1,
            //                                       ),
            //                                     ),
            //                                   ),
            //                                 )
            //                               ],
            //                             ),
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //
            //                   );
            //                 });
            //               },
            //               child: Text("Cookies Policy")),
            //         ),
            //         Container(height: 20,width: 2,color: Colors.grey,),
            //         Padding(
            //           padding: const EdgeInsets.only(left: 12),
            //           child: InkWell(
            //               onTap: (){
            //                 showDialog(context: context, builder:(context){
            //                   return AlertDialog(
            //                     title: Center(child: Text("Diclaimers")),
            //                     content: SingleChildScrollView(
            //                       child: Column(
            //                         crossAxisAlignment: CrossAxisAlignment.center,
            //                         children: [
            //
            //                           Container(
            //                             height: 1,
            //                             width: MediaQuery.of(context).size.width,
            //                             color: appcolor.blueColor,
            //                           ),
            //                           SizedBox(height: 10,),
            //                           Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10),
            //                             child: Column(
            //                               crossAxisAlignment: CrossAxisAlignment.start,
            //                               children: [
            //                                 Text(
            //                                   '1. PayTm : Any Amount equal or above Rs. 1',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   '2. Bank Transfer : Any Amount equal or above\n   Rs.300 ',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   'Disclaimers',
            //                                   style: TextStyle(
            //                                     color: appcolor.appcolors,
            //                                     fontSize: 18,
            //                                   ),
            //                                 ),
            //                                 Text(
            //                                   '1. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   '2. Please note as, per CBDTwhen an unknown\n   printer took a galley of type and scrambled \n   it to make a type specimen book. It has \n   survived not only five centuries, ',
            //                                   style: TextStyle(fontSize: 14),
            //                                 ),
            //                                 Text(
            //                                   'End User Liscence Agreement',
            //                                   style: TextStyle(
            //                                       color: appcolor.appcolors,
            //                                       fontSize: 18
            //                                   ),
            //                                 ),
            //                                 Text(
            //                                   'To Know more About us please click on the button',
            //                                   style: TextStyle(
            //                                     fontSize: 14,
            //                                     height: 1,
            //                                   ),
            //                                 ),
            //                                 TextButton(
            //                                   onPressed: () {
            //                                     // Get.to(aboutUs());
            //                                     Navigator.pop(context);
            //                                   },
            //                                   child: Center(
            //                                     child: Text(
            //                                       'Ok',
            //                                       style: TextStyle(
            //                                         fontSize: 16,
            //                                         height: 1,
            //                                       ),
            //                                     ),
            //                                   ),
            //                                 )
            //                               ],
            //                             ),
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //
            //                   );
            //                 });
            //               },
            //               child: Text("Disclaimer")),
            //         )
            //       ],)
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
