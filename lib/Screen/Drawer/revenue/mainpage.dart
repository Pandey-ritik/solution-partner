import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:solution_parnter/Screen/Drawer/revenue/revenue_home.dart';
import 'package:solution_parnter/Screen/Homepage.dart';

import '../../../Content/consultation.dart';
import '../../../Content/edit_slotes.dart';
import '../../../Content/invoice.dart';
import '../../../auth/Login_Page.dart';
import '../Call_log.dart';
import '../Feedback_raised.dart';
import '../Setting/block_calendar.dart';
import '../Setting/firstui_setting.dart';
import '../Social_Media.dart';
import '../Subscription.dart';
import '../forgotPin.dart';
import '../history.dart';
import '../language.dart';
import '../myTask.dart';
import '../profile/User_Profile.dart';
import '../schedule.dart';
import '../team.dart';
import '../terms&condition.dart';
import 'feed.dart';
import 'lead.dart';
import 'notification.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedItem = 0;
  var _pageData = [
    const revenue_home(),
    const leads(),
    const HomePage(),
  ];
  bool _isListening = false;
  // void _startListening() async {
  //   if (!_isListening) {
  //     bool available = await _speech.initialize(
  //       onStatus: (status) {
  //         print('Speech recognition status: $status');
  //       },
  //       onError: (error) {
  //         print('Speech recognition error: $error');
  //       },
  //     );
  //
  //     if (available) {
  //       setState(() {
  //         _isListening = true;
  //       });
  //
  //       _speech.listen(
  //         onResult: (result) {
  //
  //           print('Speech recognition result: ${result.recognizedWords}');
  //         },
  //       );
  //     }
  //   } else {
  //     setState(() {
  //       _isListening = false;
  //     });
  //     _speech.stop();
  //   }
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: ListofDrawer()),
      key: _scaffoldKey,
      appBar: AppBar(
        // centerTitle: true,
        title: Image.asset(image.logo1),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                const Icon(Icons.search),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>const NotificationPage()));

                      },
                      child: const Icon(Icons.notifications_active_outlined)),
                ),
                const Icon(Icons.message_outlined)
              ],
            ),
          )
        ],
        // leading:  Padding(
        //   padding: const EdgeInsets.only(left: 15),
        //   child: InkWell(
        //     onTap: () {
        //       _scaffoldKey.currentState!.openDrawer();
        //     },
        //     highlightColor: Colors.transparent,
        //     child:Container(
        //         height: 70,
        //         child: Image.asset(image.logo,fit: BoxFit.cover,)),
        //   ),
        // ),
        automaticallyImplyLeading: false,
        // actions: [
        //   // Container(
        //   //   child: Row(
        //   //     children: [
        //   //
        //   //       //   Text("Hi,Saurabh",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
        //   //       SizedBox(
        //   //         width: 10,
        //   //       ),
        //   //       IconButton(onPressed:() {
        //   //         Navigator.push(context, MaterialPageRoute(builder:(context)=>notifcation()));
        //   //       }, icon: Icon(Icons.notifications_outlined)),
        //   //       IconButton(onPressed:() {
        //   //         Navigator.push(context, MaterialPageRoute(builder:(context)=>Favourite()));
        //   //       }, icon: Icon(Icons.favorite_outline,)),
        //   //       IconButton(onPressed:() {
        //   //         showSearch(
        //   //             context: context,
        //   //             delegate: Searchpage());
        //   //       }, icon:Icon(Icons.search_outlined)),
        //   //       IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>FilterPage()));}, icon: Icon(Icons.filter_alt_outlined))
        //   //     ],
        //   //   ),
        //   // ),
        // ],
        elevation: 5,
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        //  fixedColor: appcolor.appcolors,
        backgroundColor: const Color.fromARGB(255, 234, 204, 234),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedItemColor: appcolor.blueColor,
        items: [
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.filter),
            label: 'Leads ',
          ),
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.feed),
            label: 'Feeds',
          ),
        ],
        currentIndex: selectedItem,
        onTap: (setvalue) {
          setState(() {
            selectedItem = setvalue;
          });
        },
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: _pageData[selectedItem],
        ),
      ),
    );
  }

  Widget ListofDrawer() {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => userProfildata()));
            },
            child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: appcolor.blueColor),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        // child: Text("SB"),
                        backgroundColor: appcolor.greyColor,
                        backgroundImage: AssetImage('${image.profileImage}'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hi,Saurabh",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                          Text(
                            "8979034037",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ),

        listTile(
            title: 'Call Logs',
            icon: Icons.call_end_outlined,
            callback: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const callLog()));
            }),
        listTile(
            title: 'Schedule',
            icon: Icons.schedule_outlined,
            callback: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Schedule()));
            }),
        listTile(
            title: 'Team',
            icon: Icons.group,
            callback: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const team()));
            }),
        listTile(
            title: 'Task',
            icon: Icons.task,
            callback: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const myTask()));
            }),
        listTile(
            title: 'Consultation Timings',
            icon: FontAwesomeIcons.chartPie,
            callback: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Consultation_Timings()));
            }
        ),

        listTile(
            title: 'History',
            icon: Icons.history_outlined,
            callback: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const histroy()));
            }),
        listTile(
            title: 'Invoice',
            icon: Icons.edit_document,
            callback: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> invoice()));
            }),
        listTile(
          title: "Edit Slots",
          icon: (Icons.edit_square),
          callback: (){
            Navigator.push(context, MaterialPageRoute(
              builder:(context) =>  const EditSlote(),
            ));
          },
        ),
        listTile(
          title: "Change Password",
          icon: (Icons.password),
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ForgotPinScreen(),
                ));
          },
        ),
        listTile(
            title: 'Contact Requests',
            icon: Icons.contact_phone,
            callback: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>callLog()));
            }),
        listTile(
          title: "Language",
          icon: (Icons.language),
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LanguageScreen(),
                ));
          },
        ),
        listTile(
            title: 'SK Connect',
            icon: Icons.connect_without_contact,
            callback: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>callLog()));
            }),
        listTile(
          title: "Subscription",
          icon: (Icons.subscriptions),
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Subcription(),
                ));
          },
        ),
        listTile(
          title: "Block Calendar",
          icon: (Icons.subscriptions),
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  BlockCalendar(),
                ));
          },
        ),
        listTile(
          title: "Feedback/Raise A Ticket",
          icon: (Icons.feedback),
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FeedbackComplaintScreen(),
                ));
          },
        ),
        listTile(
            title: 'Help & Support',
            icon: Icons.help,
            callback: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>callLog()));
            }),
        listTile(
            title: 'Report Bug',
            icon: Icons.bug_report,
            callback: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>callLog()));
            }),


        listTile(
            title: "Terms & Conditions",
            icon: Icons.note_add,
            callback: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const termsandCondition()));
            }),
        listTile(
            title: 'Notification ON/OFF',
            icon: Icons.notifications,
            callback: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>callLog()));
            }),
        listTile(
          title: "Setting",
          icon: (Icons.settings),
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const firstui_Setting(),
                ));
          },
        ),

        Divider(
          height: 2,
          color: Colors.grey.shade400,
        ),
        listTile(
            title: 'Logout',
            icon: Icons.logout_outlined,
            callback: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Alert'),
                      content: const Text('Are you sure exit?'),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: appcolor.greenColor),
                                onPressed: () {
                                  Get.offAll(const Login_Page());
                                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mainPage()));
                                },
                                child: const Text(
                                  'Yes',
                                  style: TextStyle(color: Colors.white),
                                )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: appcolor.blueColor),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'No',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        )
                      ],
                    );
                  });
            }),
      ],
    );
  }

  Widget listTile({String? title, icon, Function()? callback}) {
    return ListTile(
      onTap: callback,
      title: Text(
        '$title',
        style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
      ),
      leading: Icon(
        icon,
        color: appcolor.blueColor,
      ),
    );
  }
}
