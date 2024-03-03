import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';


class Privcay_Policy extends StatefulWidget {
  const Privcay_Policy({super.key});

  @override
  State<Privcay_Policy> createState() => _Privcay_Policy();
}
class _Privcay_Policy extends State<Privcay_Policy> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(automaticallyImplyLeading: false,
        //   centerTitle: true,
        //   leading: IconButton(onPressed: (){
        //     Navigator.pop(context);
        //   },icon: Icon(Icons.arrow_back,),),
        //   title: Text('Privacy & Policy',style: TextStyle(fontWeight: FontWeight.w500,),),
        // ),
        // endDrawer: Drawers(context),
        resizeToAvoidBottomInset: false,

        body: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(image.terms,height: 80,width: 80,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Privacy & Policy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      Container(
                        height: 30,
                        color: appcolor.greenColor,
                        width: Get.width*0.7,child: Center(
                        child: Text(
                          'PayTm : Any Amount equal or above ',
                          style: TextStyle(fontSize: 12,color: Colors.white),
                        ),
                      ),)
                    ],
                  )
                ],
              ),
              // Container(
              //   height: 1,
              //   width: MediaQuery.of(context).size.width,
              //   color: appcolor.blueColor,
              // ),
              SizedBox(height: 20,),
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
                      '2. Bank Transfer : Any Amount equal or \n    above Rs.300 ',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Disclaimer',
                      style: TextStyle(
                        color: appcolor.newRedColor,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '1. Please note as, per CBDTwhen an \n   unknown printer took a galley of type and \n   scrambled  it to make a type specimen \n   book. It has  survived not only five \n   centuries ',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      '2. Please note as, per CBDTwhen an \n   unknown printer took a galley of type and \n   scrambled  it to make a type specimen \n   book. It has  survived not only five \n   centuries ',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      'End User Liscence Agreement',
                      style: TextStyle(
                          color: appcolor.newRedColor,
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
                      child: Text(
                        'Click Here',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1,
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

  }


}




