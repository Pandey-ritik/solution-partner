import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';

class ForgotPinScreen extends StatefulWidget {
  const ForgotPinScreen({super.key});

  @override
  State<ForgotPinScreen> createState() => _ForgotPinScreenState();
}

class _ForgotPinScreenState extends State<ForgotPinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Reset PIN",style: TextStyle(color: appcolor.borderColor),),
      // centerTitle: true,
    ),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Container(
                    height: MediaQuery.of(context).size.height *0.4,
                    width: MediaQuery.of(context).size.height ,
                    child: Image.asset(image.logo,fit: BoxFit.contain,)),

                Padding(
                  padding: const EdgeInsets.only(left:30),
                  child: Text("Enter your Register mobile number",style: TextStyle(fontWeight: FontWeight.bold,color: appcolor.borderColor),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 65,

                    child: Card(
                      shape: RoundedRectangleBorder( //<-- SEE HERE
                        // side: BorderSide(
                        //   color: Colors.grey,
                        // ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),

                      color: Colors.white,
                      elevation: 10,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage("assets/india.png"),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 1,
                              color: Colors.grey.shade500,
                            ),
                            SizedBox(width: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left:5.0,right: 5,bottom: 5),
                              child: Text("+91",style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),),
                            ),
                            Expanded(
                              child: TextFormField(
                                style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold ),
                                keyboardType: TextInputType.phone,
                                maxLength: 10,
                                // maxLengthEnforcement:,
                                decoration: InputDecoration(


                                    counterText: "",
                                    border:InputBorder.none,
                                    hintText: "Phone number"
                                ),
                              ),
                            )

                          ],)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Otpscreen()));
                      },
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width*0.95,
                        child: Card(
                          shape: RoundedRectangleBorder( //<-- SEE HERE
                            side: BorderSide(
                              color: appcolor.blueColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),

                          color: Colors.white,

                          child: Center(child: Text("Send OTP",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700))),
                        ),
                      ),
                    ),
                  ],
                ),
              ]
          ),
        )
    );
  }
}



class Otpscreen extends StatefulWidget {
  const Otpscreen({super.key});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
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

    /// Optionally you can use form to validate the Pinput
    return Scaffold(
        appBar: AppBar(
          title: Text("PIN Verification"),
        ),
        body: Form(
          key: formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                Container(
                    height: MediaQuery.of(context).size.height *0.4,
                    width: MediaQuery.of(context).size.height ,
                    child: Image.asset(image.logo,fit: BoxFit.contain,)),

                //  Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //    children: [
                //     //  Padding(
                //     //    padding: const EdgeInsets.only(left:20),
                //     //    child: Text("Login with your PIN",style: TextStyle(fontWeight: FontWeight.bold,color: appcolor.appcolors),),
                //     //  ),
                //  TextButton(onPressed: (){
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPinScreen()));
                //  }, child: Text("Resend PIN?"))
                //    ],
                //  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Please Fill Correct OTP",style: TextStyle(color: appcolor.blueColor,fontWeight: FontWeight.w700)),
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


                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainPage()));
                  },
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width*0.95,
                    child: Card(
                      shape: RoundedRectangleBorder( //<-- SEE HERE
                        side: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      color: Colors.white,

                      child: Center(child: Text("Submit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700))),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPinScreen()));
                    }, child: Text("Resend OTP?")),
                  ],
                ),
              ]
          ),
        )
    );
  }
}