import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:solution_parnter/Design/Responsive.dart';

class termsandCondition extends StatefulWidget {
  const termsandCondition({super.key});
  @override
  State<termsandCondition> createState() => _termsandConditionState();
}

class _termsandConditionState extends State<termsandCondition> {
  bool term = false;

  bool policy = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          title: Text('Legal'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      term = !term;
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Image.asset(
                        image.terms,
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Term & Condition',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Responsive.issmallscreen(context)
                                ? width / 24
                                : width / 60,
                            fontFamily: 'Poppins'),
                      ),
                      trailing: Icon(
                          term ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                    ),
                  ),
                ),
              ),
              if (term)
                SingleChildScrollView(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1. PayTm : Any Amount equal or above Rs. 1',
                            style: TextStyle(
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '2. Bank Transfer : Any Amount equal or \n    above Rs.300 ',
                            style: TextStyle(
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Disclaimer',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 20
                                    : width / 60,
                                fontFamily: 'Poppins',
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '1. Please note as, per CBDTwhen an \n   unknown printer took a galley of type and \n   scrambled  it to make a type specimen \n   book. It has  survived not only five \n   centuries',
                            style: TextStyle(
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '2. Please note as, per CBDTwhen an \n   unknown printer took a galley of type and \n   scrambled  it to make a type specimen \n   book. It has  survived not only five \n   centuries ',
                            style: TextStyle(
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'End User Liscence Agreement ',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 20
                                    : width / 60,
                                fontFamily: 'Poppins',
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'To Know more About us please click on the button ',
                            style: TextStyle(
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Click here',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: Responsive.issmallscreen(context)
                                      ? width / 23
                                      : width / 60,
                                  color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      policy = !policy;
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(Icons.privacy_tip),
                      title: Text(
                        'Privacy Policy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Responsive.issmallscreen(context)
                                ? width / 24
                                : width / 60,
                            fontFamily: 'Poppins'),
                      ),
                      trailing: Icon(
                          term ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                    ),
                  ),
                ),
              ),
              if (policy)
                SingleChildScrollView(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1. PayTm : Any Amount equal or above Rs. 1',
                            style: TextStyle(
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '2. Bank Transfer : Any Amount equal or \n    above Rs.300 ',
                            style: TextStyle(
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Disclaimer',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 20
                                    : width / 60,
                                fontFamily: 'Poppins',
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '1. Please note as, per CBDTwhen an \n   unknown printer took a galley of type and \n   scrambled  it to make a type specimen \n   book. It has  survived not only five \n   centuries',
                            style: TextStyle(
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '2. Please note as, per CBDTwhen an \n   unknown printer took a galley of type and \n   scrambled  it to make a type specimen \n   book. It has  survived not only five \n   centuries ',
                            style: TextStyle(
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'End User Liscence Agreement ',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 20
                                    : width / 60,
                                fontFamily: 'Poppins',
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'To Know more About us please click on the button ',
                            style: TextStyle(
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Click here',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: Responsive.issmallscreen(context)
                                      ? width / 23
                                      : width / 60,
                                  color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ));
  }
}
