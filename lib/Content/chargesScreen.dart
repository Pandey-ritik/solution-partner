import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution_parnter/Content/detailsScreen.dart';
import 'package:solution_parnter/Design/Responsive.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  TextEditingController phonefeecontroler = TextEditingController();
  TextEditingController meetingfeecontroler = TextEditingController();
  TextEditingController emailfeecontroler = TextEditingController();
  TextEditingController casefillingfeecontroler = TextEditingController();
  TextEditingController perappreancesfeecontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                padding: EdgeInsets.all(10),
                child: Text("Your Charges/Fees(Rs.)",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: Responsive.issmallscreen(context)
                            ? width / 25
                            : width / 40,
                        fontFamily: 'main',
                        color: Colors.black.withOpacity(0.8))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Phone Consultation Fees(per minute)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'main',
                                color: Colors.black.withOpacity(0.8))),
                        TextField(
                          controller: phonefeecontroler,
                          decoration: InputDecoration(
                            hintText: 'Please Enter Phone Consultation fees',
                            hintStyle: TextStyle(
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 27
                                    : width / 60,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.withOpacity(0.8)),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Text("Meeting Consultation Fees(per minute)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'main',
                                color: Colors.black.withOpacity(0.8))),
                        TextField(
                          controller: meetingfeecontroler,
                          decoration: InputDecoration(
                              hintText:
                                  'Please Enter Meeting Consultation Fees',
                              hintStyle: TextStyle(
                                  fontSize: Responsive.issmallscreen(context)
                                      ? width / 27
                                      : width / 60,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.withOpacity(0.8))),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Text("Email Consultation Fees(per email)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'main',
                                color: Colors.black.withOpacity(0.8))),
                        TextField(
                          controller: emailfeecontroler,
                          decoration: InputDecoration(
                              hintText: 'Please Enter Email Consultation Fees',
                              hintStyle: TextStyle(
                                  fontSize: Responsive.issmallscreen(context)
                                      ? width / 27
                                      : width / 60,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.withOpacity(0.8))),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Text("Case Filing Fees(per case",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'main',
                                color: Colors.black.withOpacity(0.8))),
                        TextField(
                          controller: casefillingfeecontroler,
                          decoration: InputDecoration(
                              hintText: 'Please Enter Case Filing Fees',
                              hintStyle: TextStyle(
                                  fontSize: Responsive.issmallscreen(context)
                                      ? width / 27
                                      : width / 60,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.withOpacity(0.8))),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Text("Per Appearance Fees",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Responsive.issmallscreen(context)
                                    ? width / 26
                                    : width / 60,
                                fontFamily: 'main',
                                color: Colors.black.withOpacity(0.8))),
                        TextField(
                          controller: perappreancesfeecontroler,
                          decoration: InputDecoration(
                              hintText: 'Please Enter Per Appearance Fees',
                              hintStyle: TextStyle(
                                  fontSize: Responsive.issmallscreen(context)
                                      ? width / 27
                                      : width / 60,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.withOpacity(0.8))),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        // SizedBox(height: 30,),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Second()));
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 5,
                                  backgroundColor: Colors.blue,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 10),
                                  child: Text('Update',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              Responsive.issmallscreen(context)
                                                  ? width / 21
                                                  : width / 60,
                                          color: Colors.white,
                                          fontFamily: 'main')),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
