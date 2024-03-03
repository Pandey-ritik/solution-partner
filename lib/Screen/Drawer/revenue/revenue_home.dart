import 'package:booking_calendar/booking_calendar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:solution_parnter/Screen/call_video/video/constants.dart';
import 'package:solution_parnter/Screen/slots_online.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:intl/intl.dart';
import 'category/add_client.dart';
import 'category/cases.dart';
import 'category/enquires.dart';
import 'package:flutter_advanced_calendar/flutter_advanced_calendar.dart';
import 'dart:math';

import 'package:calendar_appbar/calendar_appbar.dart';

class revenue_home extends StatefulWidget {
  const revenue_home({super.key});

  @override
  State<revenue_home> createState() => _revenue_homeState();
}

class _revenue_homeState extends State<revenue_home> {
  // final _calendarControllerToday = AdvancedCalendarController.today();
  // final _calendarControllerCustom =
  // AdvancedCalendarController(DateTime(2022, 10, 23));

  DateTime? selectedDate;
  Random random = new Random();
  double width = 0.0;
  double height = 0.0;
  int selectedIndex = 0;
  DateTime now = DateTime(2026, 10, 10);
  late DateTime lastDayOfMonth;

  void initState() {
    setState(() {
      selectedDate = DateTime.now();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(11))),
                  height: Get.height * 0.3,
                  width: Get.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(11))),
                          width: Get.width * 0.85,
                          height: Get.height * 0.2,
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: appcolor.blueColor,
                                  radius: 20,
                                  child: const Icon(
                                    FontAwesomeIcons.wallet,
                                    color: Colors.white,
                                  ),
                                ),
                                title: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Wallet Balance'),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '₹',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '0.00',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 1,
                                width: Get.width * 0.8,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 8,
                                            width: 8,
                                            decoration: const BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          const Text(
                                            'Total Income',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '₹',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            '0.00',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 8,
                                            width: 8,
                                            decoration: const BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          const Text(
                                            'Total Withdrawl',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '₹',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            '0.00',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 8,
                                            width: 8,
                                            decoration: const BoxDecoration(
                                                color: Colors.black,
                                                shape: BoxShape.circle),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          const Text(
                                            'Pending',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '₹',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            '0.00',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     const Column(
                      //       mainAxisAlignment: MainAxisAlignment.start,
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //           '',
                      //           style: TextStyle(fontSize: 10),
                      //         ),
                      //         SizedBox(
                      //           height: 10,
                      //         ),
                      //         Text(
                      //           '',
                      //           style: TextStyle(
                      //               fontSize: 20, fontWeight: FontWeight.bold),
                      //         ),
                      //       ],
                      //     ),
                      //     const Column(
                      //       mainAxisAlignment: MainAxisAlignment.start,
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //           '',
                      //           style: TextStyle(fontSize: 10),
                      //         ),
                      //         SizedBox(
                      //           height: 10,
                      //         ),
                      //         Text(
                      //           '',
                      //           style: TextStyle(
                      //               fontSize: 20, fontWeight: FontWeight.bold),
                      //         ),
                      //       ],
                      //     ),
                      //     Column(
                      //       mainAxisAlignment: MainAxisAlignment.start,
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //           '',
                      //           style: TextStyle(
                      //               fontSize: 10, color: appcolor.blueColor),
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(11))),
                  height: Get.height * 0.1,
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Available Slots',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(OnlineSlot());
                              // Get.defaultDialog(
                              //     backgroundColor: Colors.white,
                              //     title: '',
                              //     titleStyle: const TextStyle(
                              //         color: Colors.green, fontSize: 15),
                              //     content: SingleChildScrollView(
                              //       child: Column(
                              //         children: [
                              //           const SizedBox(
                              //             height: 10,
                              //           ),
                              //           Row(
                              //             mainAxisAlignment:
                              //                 MainAxisAlignment.spaceAround,
                              //             children: [
                              //               Container(
                              //                 height: Get.height * .04,
                              //                 width: Get.width * .35,
                              //                 color: Colors.white70,
                              //                 child: const Row(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment
                              //                           .spaceAround,
                              //                   children: [
                              //                     Text('ALL(1)'),
                              //                     Icon(Icons
                              //                         .arrow_drop_down_outlined)
                              //                   ],
                              //                 ),
                              //               ),
                              //               Container(
                              //                 height: Get.height * .04,
                              //                 width: Get.width * .35,
                              //                 color: Colors.white70,
                              //                 child: const Row(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment
                              //                           .spaceAround,
                              //                   children: [
                              //                     Text('ALL STATUS'),
                              //                     Icon(Icons
                              //                         .arrow_drop_down_outlined)
                              //                   ],
                              //                 ),
                              //               ),
                              //             ],
                              //           ),
                              //           SizedBox(
                              //             height: 10,
                              //           ),
                              //           Container(
                              //             height: Get.height * .1,
                              //             width: double.maxFinite,
                              //             color: Colors.white70,
                              //             child: Column(
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.start,
                              //               children: [
                              //                 Row(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment
                              //                           .spaceAround,
                              //                   children: [
                              //                     Text('PUNEET KUMAR'),
                              //                     Padding(
                              //                       padding:
                              //                           const EdgeInsets.only(
                              //                               left: 100),
                              //                       child: Text(
                              //                         'Online',
                              //                         style: TextStyle(
                              //                             color: Colors.green,
                              //                             fontSize: 10),
                              //                       ),
                              //                     ),
                              //                     Icon(Icons.more_vert)
                              //                   ],
                              //                 ),
                              //                 Text(
                              //                   '  UP NEXT:9:00-9:15 - New Appointment',
                              //                   style: TextStyle(
                              //                       fontSize: 10,
                              //                       fontWeight:
                              //                           FontWeight.w400),
                              //                 ),
                              //                 Row(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment
                              //                           .spaceAround,
                              //                   children: [
                              //                     Container(
                              //                       height: Get.height * .045,
                              //                       width: Get.width * .23,
                              //                       decoration: BoxDecoration(
                              //                         color: Colors.blue,
                              //                         borderRadius:
                              //                             BorderRadius.circular(
                              //                                 15),
                              //                       ),
                              //                       child: Center(
                              //                         child: Text(
                              //                           'Audio Call',
                              //                           style: TextStyle(
                              //                               color: Colors.white,
                              //                               fontSize: 11,
                              //                               fontWeight:
                              //                                   FontWeight
                              //                                       .bold),
                              //                         ),
                              //                       ),
                              //                     ),
                              //                     Container(
                              //                       height: Get.height * .045,
                              //                       width: Get.width * .23,
                              //                       decoration: BoxDecoration(
                              //                         color: Colors.brown,
                              //                         borderRadius:
                              //                             BorderRadius.circular(
                              //                                 15),
                              //                       ),
                              //                       child: Center(
                              //                         child: Text(
                              //                           'Video Call',
                              //                           style: TextStyle(
                              //                               color: Colors.white,
                              //                               fontSize: 11,
                              //                               fontWeight:
                              //                                   FontWeight
                              //                                       .bold),
                              //                         ),
                              //                       ),
                              //                     ),
                              //                     Container(
                              //                       height: Get.height * .045,
                              //                       width: Get.width * .23,
                              //                       decoration: BoxDecoration(
                              //                         color: Colors.green,
                              //                         borderRadius:
                              //                             BorderRadius.circular(
                              //                                 15),
                              //                       ),
                              //                       child: Center(
                              //                         child: Text(
                              //                           'Chat Room',
                              //                           style: TextStyle(
                              //                               color: Colors.white,
                              //                               fontSize: 11,
                              //                               fontWeight:
                              //                                   FontWeight
                              //                                       .bold),
                              //                         ),
                              //                       ),
                              //                     )
                              //                   ],
                              //                 ),
                              //               ],
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //     ));
                            },
                            child: const Text(
                              'Online',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Text(
                            ' | ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BookingCalendarDemoApp()));
                            },
                            child: Text(
                              'Physical',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // child: Image.asset(image.subcrbanner,fit: BoxFit.contain,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(11))),
                height: Get.height * 0.2,
                width: Get.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: width * 0.2,
                          child: InkWell(
                              onTap: () {
                                Get.to(const enquires());
                              },
                              child:
                                  category(FontAwesomeIcons.indent, 'Enquiry')),
                        ),
                        SizedBox(
                          width: width * 0.2,
                          child: InkWell(
                              onTap: () {
                                Get.to(const add_client());
                              },
                              child:
                                  category(FontAwesomeIcons.person, 'Clients')),
                        ),
                        SizedBox(
                          width: width * 0.2,
                          child: InkWell(
                              onTap: () {
                                Get.to(const cases());
                              },
                              child: category(FontAwesomeIcons.file, 'Cases')),
                        ),
                        SizedBox(
                            width: width * 0.2,
                            child: category(
                                FontAwesomeIcons.paypal, 'Payment Link')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: width * 0.2,
                          child: InkWell(
                              onTap: () {},
                              child: category(
                                  FontAwesomeIcons.calendar, 'Calendar')),
                        ),
                        SizedBox(
                          width: width * 0.2,
                          child: InkWell(
                              onTap: () {},
                              child: category(
                                  FontAwesomeIcons.users, 'Suscribers')),
                        ),
                        SizedBox(
                          width: width * 0.2,
                          child: InkWell(
                              onTap: () {},
                              child: category(
                                  FontAwesomeIcons.message, 'Chat Request')),
                        ),
                        SizedBox(
                          width: width * 0.2,
                          child: InkWell(
                              onTap: () {},
                              child: category(
                                  FontAwesomeIcons.phone, 'Talk Zone')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Enquiries',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: appcolor.blueColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  enu(
                      'Insurance',
                      'I have some doubts on my term insurance',
                      'Sanjay',
                      'jan 10,2024 11:32PM-Rohtak,Haryana',
                      '${image.postImage2}'),
                  const SizedBox(
                    height: 10,
                  ),
                  enu(
                      'Insurance',
                      'Now that we\'ve gone over best practices let\'s review examples of some of the most effective Contact Us pages on the Internet.',
                      'Abhishek',
                      'jan 09,2024 11:00PM-Hisar,Haryana',
                      '${image.postImage1}')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget category(icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 10),
        )
      ],
    );
  }

  Widget enu(loan, content, name, address, imag) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.all(Radius.circular(11)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(4))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      loan,
                      style: TextStyle(color: appcolor.blueColor),
                    ),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: appcolor.blueColor),
                    onPressed: () {},
                    child: const Text(
                      'Open',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(width: Get.width * 0.9, child: Text(content)),
          ),
          ListTile(
            title: Text(
              name,
              style: TextStyle(color: appcolor.black),
            ),
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                imag,
              ),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: Get.width * 0.4,
                    child: Text(
                      address,
                      style: const TextStyle(color: Colors.black, fontSize: 10),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.forward,
                      color: appcolor.blueColor,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

//=====================---------------BookingCalendarDemoApp

class BookingCalendarDemoApp extends StatefulWidget {
  @override
  _BookingCalendarDemoAppState createState() => _BookingCalendarDemoAppState();
}

class _BookingCalendarDemoAppState extends State<BookingCalendarDemoApp> {
  late AnimationController _animationController;
  bool _isDropdownOpen = false;
  DateTime? selectedDate;
  Random random = new Random();
  String selectedValue01 = 'All';
  String selectedValue02 = 'All Statuses';

  @override
  void initState() {
    setState(() {
      selectedDate = DateTime.now();
    });
    super.initState();
    // _animationController = AnimationController(
    //   vsync: this, // This line should not result in an error now
    //   duration: Duration(milliseconds: 300),
    // );
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  void _toggleDropdown() {
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
      if (_isDropdownOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }
  String dropdownvalue = '';
  void _selectOption(String option) {
    // Handle option selection as needed
    print('Selected: $option');
    _toggleDropdown(); // Close the dropdown after selecting an option
  }
  @override
  Widget build(BuildContext context) {
    var _isDropownOpen;
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 40,),
/////////----yha se
        Row(
          children: [
         GestureDetector(
             onTap: () async {
               DateTime? pickedDate = await showDatePicker(
                   context: context,
                   initialDate: DateTime.now(),
                   firstDate: DateTime(1950),
                   //DateTime.now() - not to allow to choose before today.
                   lastDate: DateTime(2100));

               if (pickedDate != null) {
                 print(
                     pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                 String formattedDate =
                 DateFormat('yyyy-MM-dd').format(pickedDate);
                 print(
                     formattedDate); //formatted date output using intl package =>  2021-03-16
                 setState(() {
                   var dateInput;
                   dateInput.text =
                       formattedDate; //set output date to TextField value.
                 });
               } else {}
             },
      child: Padding(
          padding: const EdgeInsets.only(bottom: 25,left: 10),
             child: Text('Date',style: TextStyle(
                 fontSize:20,fontWeight:FontWeight.normal),),),),

            Container(
                margin: EdgeInsets.only(bottom: 25,left: 180),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey,width: 3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  GestureDetector(
                  onTap: _toggleDropdown,
                   child: Icon(Icons.directions_walk, color: Colors.blue, size: 14),

                  ),
                    SizedBox(width: 1,),
                    Text("Walk-In "),
                ],
                ),
        ),
            const Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: SizedBox(width:1,child: Icon(Icons.refresh, color: Colors.blue, size: 25)),
            ),
          ],

        ),

        //////////////------yha khatam
        Container(
          margin: EdgeInsets.only(bottom: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), // Set the border radius
            color: Colors.grey, // Hexadecimal value for #0870c2
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // Set shadow color
                spreadRadius: 2, // Set the spread radius of the shadow
                blurRadius: 5, // Set the blur radius of the shadow
                offset: Offset(0, 3), // Set the offset of the shadow
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 225, // Reduced height
                width: 350,
                child: CalendarAppBar(
                  white: Colors.lightBlueAccent,
                  black: Colors.white,
                  accent: Colors.white,
                  padding: 2, // Adjusted padding
                  backButton: false,
                  onDateChanged: (value) => setState(() => selectedDate = value),
                  lastDate: DateTime.now(),
                  events: List.generate(
                    5, // Reduced the number of events for better visibility
                        (index) => DateTime.now().subtract(Duration(days: index * random.nextInt(5))),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SizedBox(
                  height: 25,
                  width: Get.width * 0.95,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('All'),
                        onTap: () => _selectOption('All'),
                      ),
                      ListTile(
                        title: Text('Physical'),
                        onTap: () => _selectOption('Physical'),
                      ),
                      ListTile(
                        title: Text('Online'),
                        onTap: () => _selectOption('Online'),
                      ),
                      ListTile(
                        title: Text('Walk-In'),
                        onTap: () => _selectOption('Walk-In'),
                      ),
                      // Add more list items as needed
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Text('(0)', style: TextStyle(color: Colors.white)),
                  //     Text('(0)', style: TextStyle(color: Colors.white)),
                  //     Text('(0)', style: TextStyle(color: Colors.white)),
                  //     Text('(0)', style: TextStyle(color: Colors.white)),
                  //     Text('(0)', style: TextStyle(color: Colors.white)),
                  //   ],
                  // )
                    //,white
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: Get.height * .04,
              color: Colors.white70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(''),
                  SizedBox(
                    height: 5,
                  ),
                  Positioned(
                    top: _isDropownOpen ?0.0 :-200.0,
                    child: SizeTransition(
                      sizeFactor:_animationController.drive(CurveTween(curve:Curves.easeInOut)),
                      axisAlignment:-1.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border(
                            left: BorderSide(
                              color: Colors.grey,
                              width: 20,
                            )),
                      ),
                      // width: 300,
                      child: DropdownButton<String>(
                        value: selectedValue01,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue01 = newValue!;
                          });
                        },
                        items: <String>[
                          'All',
                          'Physical',
                          'Online',
                          'Walk-In',
                        ].map<DropdownMenuItem<String>>(
                              (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Row(
                                children: [
                                  Text(value),
                                  SizedBox(width: 20), // Adjust the spacing here
                                  //Icon(Icons.arrow_drop_down),
                                ],
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ),
            Container(
              height: Get.height * .04,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(''),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border(
                          left: BorderSide(
                            color: Colors.grey,
                            width: 20,
                          )),
                    ),

                    // width: 300,

                    child: DropdownButton<String>(
                      value: selectedValue02,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue02 = newValue!;
                        });
                      },
                      items: <String>[
                        'All Statuses',
                        'Upcoming',
                        'In-Progress',
                        'Rx Pending',
                        'Completed',
                      ].map<DropdownMenuItem<String>>(
                            (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Row(
                              children: [
                                Text(value),
                                SizedBox(width: 20),
                                // Adjust the spacing here
                                //Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}