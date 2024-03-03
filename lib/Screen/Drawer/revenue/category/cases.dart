import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:solution_parnter/Content/color.dart';

import 'controller_tab.dart';


class cases extends StatefulWidget {

  const cases({super.key,});
  @override
  State<cases> createState() => _cases();
}

class _cases extends State<cases> {
  productController controller = Get.put(productController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            color: Colors.white

          // image: DecorationImage(
          //     image: AssetImage('assets/rectangle.png'), fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Case'),
          ),
          body: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(11)),
                    border: Border.all(color: Colors.black)
                  ),
                  height: Get.height * 0.05,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: TabBar(
                      dividerColor: appcolor.blueColor,
                      indicatorPadding: EdgeInsets.zero,
                      unselectedLabelColor: Colors.black,
                      labelPadding: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      unselectedLabelStyle: TextStyle(
                        fontSize: 14,
                      ),
                      indicatorColor: appcolor.blueColor,
                      labelColor: Colors.black,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      controller: controller.tabcontroller,
                      tabs: [
                        Container(
                          child: Text(
                            'Case',
                          ),
                        ),
                        Container(
                          child: Text('Advisory',textAlign: TextAlign.center,style: TextStyle(fontSize: 14),),
                        ),
                        Container(
                            child: Text('Documentation'))
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child:
                TabBarView(
                    controller: controller.tabcontroller,
                    children: [
                      points(),
                      Transition(),
                  Order()

            ],
          ),

        ),
        ]
      ),
    )
    )
    );
  }


  Widget points() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('You do not have any case at this moment.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('click ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
            Text(' "+add cases"',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: appcolor.blueColor),textAlign: TextAlign.center,),
            Text(' button ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
          ],
        )
      ],
    );



  }

  Widget Transition() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('You do not have any advisory at this moment.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('click ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
            Text(' "+add advisory"',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: appcolor.blueColor),textAlign: TextAlign.center,),
            Text(' button ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
          ],
        )
      ],
    );
  }

  Widget Order() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('You do not have any documentation at this moment.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('click ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
            Text(' "+add documentation"',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: appcolor.blueColor),textAlign: TextAlign.center,),
            Text(' button ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
          ],
        )
      ],
    );
  }
}
