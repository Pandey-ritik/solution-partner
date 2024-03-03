import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:solution_parnter/Screen/user_Profile.dart';
import 'package:solution_parnter/auth/Login_Page.dart';
import '../Content/consultation.dart';
import '../Content/edit_slotes.dart';
import '../Content/invoice.dart';
import 'Drawer/Call_log.dart';
import 'Drawer/Feedback_raised.dart';
import 'Drawer/Setting/firstui_setting.dart';
import 'Drawer/Social_Media.dart';
import 'Drawer/Subscription.dart';
import 'Drawer/profile/User_Profile.dart';
import 'Drawer/forgotPin.dart';
import 'Drawer/history.dart';
import 'Drawer/language.dart';
import 'Drawer/revenue/mainpage.dart';
import 'Drawer/schedule.dart';
import 'Drawer/terms&condition.dart';
import 'newcratePost.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: Get.width,
                  color: Colors.red,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(userProfildata());
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage(image.profileImage),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(newPostCreate(
                            name: 'Rahul',
                            image: image.profileImage,
                            detail: '',
                            imageurl: '',
                          ));
                        },
                        child: Container(
                          height: 50,
                          width: Get.width * 0.65,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              border: Border.all(color: appcolor.blueColor)),
                          child:
                              Center(child: Text('Write are something here..')),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(newPostCreate(
                            name: 'Rahul',
                            image: image.profileImage,
                            imageurl: '',
                            detail: '',
                          ));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.file,
                            ),
                            Text('Photo')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 5,
                  color: Colors.grey.shade300,
                  indent: 0,
                  endIndent: 0,
                ),
                SizedBox(
                  height: 10,
                ),
                Posts(
                  content:
                      'In “High Cost Lifestyles Can Lead to Loss of Autonomy,”, Daniel Paull MD writes about bad long-term decisions made by many high-income earners because the need a lot of money for luxury purchases.',
                  profileurl: '${image.profileImage}',
                  imgurl: "${image.postImage1}",
                  name: 'Rahul',
                ),
                Divider(
                  thickness: 9,
                  color: Colors.grey.shade300,
                  indent: 0,
                  endIndent: 0,
                ),
                Posts(
                    content:
                        'Meet Phil Zald, MD. A desire to help, heal and contribute to a better understanding of illness and its impact on patients’ lives led him to a career in medicine. As a board-certified otolaryngologist, he provides compassionate and state-of-the-art diagnosis and treatment tailored to individual patients.',
                    profileurl: '${image.postImage3}',
                    imgurl: "${image.postImage2}",
                    name: 'Saurabh'),
                Divider(
                  thickness: 9,
                  color: Colors.grey.shade300,
                  indent: 0,
                  endIndent: 0,
                ),
                Posts(
                    content:
                        'Meet Kemia M. Sarraf, MD, MPH, RCC, TIPC. The arc of her 2+ decade career has included medical practice, public health programming and development, nonprofit leadership, multiple board positions in both the public and private sector, DEI and trauma-mitigation work in medical education, and private business ownership. Currently, she is the CEO of Lodestar Consulting & Executive Coaching.',
                    profileurl: '${image.postImage2}',
                    imgurl: "${image.postImage3}",
                    name: 'Sapnu')
              ],
            ),
          ),
        ));
  }

  Widget ListofDrawer() {
    var consultation_outlined;
    return Column(
      // Important: Remove any padding from the ListView.
      children: [
        SizedBox(
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
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hi,Shivam",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                          Text(
                            "Logged in via 8979034037",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ),

        ListView(
          children: [

           listTile(
            title: 'Profile',
            icon: Icons.account_circle,
            callback: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>callLog()));
            }),
        listTile(
            title: 'Call Logs',
            icon: Icons.call_end_outlined,
            callback: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => callLog()));
            }),
        listTile(
            title: 'Schedule',
            icon: Icons.schedule_outlined,
            callback: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Schedule()));
            }),
        listTile(
            title: 'History',
            icon: Icons.history_outlined,
            callback: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => histroy()));
            }),
        listTile(
            title: 'Invoice',
            icon: Icons.edit_document,
            callback: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => invoice()));
            }),
        listTile(
          title: "Edit Slots",
          icon: (Icons.edit_square),
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditSlote(),
                ));
          },
        ),
        listTile(
          title: "Consultation Timings",
          icon: (Icons.password),
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Consultation_Timings(),
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
                  builder: (context) => ForgotPinScreen(),
                ));
          },
        ),
        listTile(
            title: 'Contact requests',
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
                  builder: (context) => LanguageScreen(),
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
                  builder: (context) => Subcription(),
                ));
          },
        ),
        listTile(
          title: "Feedback/Raise a ticket",
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
          title: "Social Media",
          icon: (Icons.language),
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactUsScreen(),
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
            title: "Legal",
            icon: Icons.document_scanner,
            callback: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => termsandCondition()));
            }),
        listTile(
            title: 'Notification on/off',
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
                  builder: (context) => firstui_Setting(),
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
                      title: Text('Alert'),
                      content: Text('Are you sure exit?'),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: appcolor.greenColor),
                                onPressed: () {
                                  Get.offAll(Login_Page());
                                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mainPage()));
                                },
                                child: Text(
                                  'Yes',
                                  style: TextStyle(color: Colors.white),
                                )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: appcolor.blueColor),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
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
        ),
        
      ],
    );
  }

  Widget listTile({String? title, icon, Function()? callback}) {
    return ListTile(
      onTap: callback,
      title: Text(
        '$title',
        style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
      ),
      leading: Icon(
        icon,
        color: appcolor.blueColor,
      ),
    );
  }
}

class ConsultationTiming {}

class Posts extends StatefulWidget {
  Posts(
      {super.key,
      required this.profileurl,
      required this.imgurl,
      required this.content,
      required this.name});
  String? profileurl;
  String? imgurl;
  String? name;
  String? content;
  bool isadded = false;
  String text = "add";
  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  TextEditingController _commentcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User's Photo
          InkWell(
            onTap: () {
              Get.to(MyScreen(
                profession: '${''}',
                name: widget.name,
                imgurl: widget.imgurl,
                isAvailable: true,
                profilePic: widget.profileurl,
              ));
            },
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24.0,
                  backgroundImage: AssetImage(
                      widget.profileurl!), // replace with your photo path
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name!,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text("29 nov")
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0),

          // Post content
          Text(
            '${widget.content}',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(
            height: 10,
          ),

          // Post Photo
          SizedBox(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              widget.imgurl!,
              fit: BoxFit.contain,
            ), // replace with your post photo path
          ),

          SizedBox(height: 16.0),

          // Like and Comment buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  LikeButton(
                    size: 30,
                    circleColor: CircleColor(
                        start: Color(0xff00ddff), end: Color(0xff0099cc)),
                    bubblesColor: BubblesColor(
                      dotPrimaryColor: Color(0xff33b5e5),
                      dotSecondaryColor: Color(0xff0099cc),
                    ),
                    likeBuilder: (bool isLiked) {
                      return FaIcon(
                        FontAwesomeIcons.thumbsUp,
                        color: isLiked ? Colors.red : appcolor.blueColor,
                        size: 30,
                      );
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Like")
                  //   likeCount: ,

                  // countBuilder: (int count, bool isLiked, String text) {
                  //   var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                  //   Widget result;
                  //   if (count == 0) {
                  //     result = Text(
                  //       "love",
                  //       style: TextStyle(color: color),
                  //     );
                  //   } else
                  //     result = Text(
                  //       text,
                  //       style: TextStyle(color: color),
                  //     );
                  //   return result;
                  // },
                ],
              ),
              SizedBox(
                width: 100,
              ),
              InkWell(
                onTap: () {
                  showBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Center(
                                  child: Text("Comments"),
                                ),
                                CommentWidget(
                                  username: "Saurabh",
                                  comment: "Usefull Session",
                                  imgurl: '${image.profileImage}',
                                ),
                                CommentWidget(
                                    username: 'john_doe',
                                    comment: 'This is an amazing photo!',
                                    imgurl: '${image.postImage1}'),
                                CommentWidget(
                                    username: 'jane_smith',
                                    comment: 'Love it! 💖',
                                    imgurl: '${image.postImage3}'),
                                CommentWidget(
                                    username: "Saurabh",
                                    comment: "Usefull Session",
                                    imgurl: '${image.postImage1}'),
                                CommentWidget(
                                    username: 'john_doe',
                                    comment: 'This is an amazing photo!',
                                    imgurl: '${image.profileImage}'),
                                // CommentWidget(
                                //   username: 'jane_smith',
                                //   comment: 'Love it! 💖', imgurl: 'assets/img_5.png'
                                // ),
                                CommentWidget(
                                    username: "Saurabh",
                                    comment: "Usefull Session",
                                    imgurl: '${image.postImage1}'),
                                CommentWidget(
                                    username: 'john_doe',
                                    comment: 'This is an amazing photo!',
                                    imgurl: '${image.postImage2}'),
                                widget.isadded == true
                                    ? CommentWidget(
                                        username: "Nisha",
                                        comment: widget.text,
                                        imgurl: "${image.postImage1}")
                                    : Container(
                                        height: 1,
                                      ),

                                Container(
                                    //  width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: _commentcontroller,
                                        decoration: InputDecoration(
                                            hintText: "Comment",
                                            border: InputBorder.none),
                                      ),
                                    )),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    if (widget.isadded == false)
                                      ElevatedButton(
                                          onPressed: () {
                                            widget.text = _commentcontroller
                                                .text
                                                .trim()
                                                .toString();

                                            print(widget.text);
                                            setState(() {
                                              widget.isadded = true;
                                              _commentcontroller.clear();
                                            });
                                            print(widget.isadded);
                                            //   Navigator.pop(context);
                                          },
                                          style: ElevatedButton.styleFrom(
                                              //  backgroundColor: Colors.white,
                                              ),
                                          child:
                                              FaIcon(FontAwesomeIcons.comment)),
                                    // ElevatedButton(
                                    //     onPressed: () {
                                    //       setState(() {
                                    //         widget.isadded = false;
                                    //       });
                                    //     },
                                    //     child: Text("Delete"))
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons
                          .comment, // replace with your comment icon path
                    ),
                    SizedBox(width: 8.0),
                    Text('Comment'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  final String username;
  final String comment;
  final String imgurl;

  CommentWidget(
      {required this.username, required this.comment, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onLongPress: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.edit),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Edit',
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.delete),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Delete',
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      ),
                    ],
                  ),
                );
              });
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(imgurl),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(comment),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
