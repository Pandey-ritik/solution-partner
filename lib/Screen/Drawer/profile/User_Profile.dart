import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:like_button/like_button.dart';
import 'package:share_plus/share_plus.dart';

import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:solution_parnter/Screen/Drawer/profile/profile%20edit.dart';
import 'package:solution_parnter/Screen/Drawer/profile/reviews.dart';

import '../../newcratePost.dart';

class userProfildata extends StatefulWidget {

  ///////////////////////////////////////////////////////////////
  String? profession = 'Lawyer';
  String? profilePic = '${image.profileImage}';
  String? name = "Saurbh";
  String? imgurl = "${image.postImage3}";
  String rating = "4.5";
  String language = "Hindi,English";
  String skill = "Life Coach";
  String sessions = "886";
  double charges = 25;
  bool view_more = false;
  bool isAvailable = true;
  ///////////////////////////////////////////////////////////////
  
  @override
  State<userProfildata> createState() => _MyScreenState();
}

class _MyScreenState extends State<userProfildata> {

  /////////////////////////////////////////////////////////
  String? rating;
  int selectedPackage = 0;
  int selectedappointment = 0;
  bool radio = true;
  bool isFav = false;
  bool follow = false;
  File? SelectedImage;
  File? SelectedImage1;
  /////////////////////////////////////////////////////////
  

  ///////////////////////bottom sheet dialog for show camere and gallery/////////////
  Future dialog(context, int value) {
    return showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 80,
            color: Colors.blueAccent,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
                    children: [
                      IconButton(
                        onPressed: () async {
                          camera(value);
                        },
                        icon: Icon(
                          Icons.camera,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Camera',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () async {
                          gallery(value);
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.file,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'File',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
  ///////////////////////bottom sheet dialog for show camere and gallery/////////////

  ///////////////////////bottom sheet dialog for show camere and gallery/////////////
  Future gallery(int value) async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;
    setState(() {
      if (value == 1) {
        SelectedImage = File(returnedImage!.path);
      } else if (value == 2) {
        SelectedImage1 = File(returnedImage!.path);
      }
      Navigator.of(context).pop();
    });
  }
  ///////////////////////bottom sheet dialog for show camere and gallery/////////////
  
  ///////////////////////bottom sheet dialog for show camere and gallery/////////////
  Future camera(int value) async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage == null) return;
    setState(() {
      if (value == 1) {
        SelectedImage = File(returnedImage!.path);
      } else if (value == 2) {
        SelectedImage1 = File(returnedImage!.path);
      }
      Navigator.of(context).pop();
    });
  }
  ///////////////////////bottom sheet dialog for show camere and gallery/////////////

  @override
  Widget build(BuildContext context) {
    double ratings = 0;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
        //////////////////////// app bar ////////////////////////
          appBar: AppBar(
            title: Text("Employer Details"),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () async {
                    await Share.share('http://schemas.android.com/apk/res/android');
                  },
                  icon: Icon(Icons.share_outlined)),
            ],
            elevation: 15,
          ),
         //////////////////////// app bar ////////////////////////

          body: SingleChildScrollView(
            child: Column(
              children: [

                //////////////////// cover pic /////////////////////
                InkWell(
                  onTap: () {
                    dialog(context, 1);
                  },
                  child: Container(
                      color: Colors.white,
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: SelectedImage == null
                          ? Image.asset(
                              widget.imgurl!,
                              fit: BoxFit.cover,
                            )
                          : Image.file(
                              File(SelectedImage!.path),
                              fit: BoxFit.cover,
                            )),
                ),
                //////////////////// cover pic /////////////////////
               
               /////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 85,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Row(
                                      //   children: [
                                      //     Icon(Icons.work_outline_outlined),
                                      //     SizedBox(
                                      //       width: 10,
                                      //     ),
                                      //     Text(widget.profession!,
                                      //         style: GoogleFonts.poppins(
                                      //             color: Colors.grey,
                                      //             fontWeight: FontWeight.w600,
                                      //             fontSize: 15))
                                      //   ],
                                      // ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.language),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            widget.language!,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.green,
                                              size: 25,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(widget.rating!,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 17)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Expertise: ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Relationship&Family",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Availability: ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Delhi,Noida,Gurugram",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.person),
                                        Text(
                                          '150 Followers',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),

                                    // Container(
                                    //   width: 100,
                                    //   child: TextButton(
                                    //     onPressed: () {
                                    //       setState(() {
                                    //         follow = !follow;
                                    //       });
                                    //     },
                                    //     child: Text(
                                    //       follow==false? "Follow":"Following",
                                    //       style: TextStyle(color: Colors.white),
                                    //     ),
                                    //     style: TextButton.styleFrom(
                                    //         shape: RoundedRectangleBorder(
                                    //             borderRadius:
                                    //             BorderRadius.circular(5)),
                                    //         backgroundColor: Colors.blue),
                                    //   ),
                                    // )
                                  ],
                                ),
                                //
                                const SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  thickness: 5,
                                  color: Colors.grey.shade300,
                                  indent: 0,
                                  endIndent: 0,
                                ),
                                Container(
                                  height: 80,
                                  width: Get.width,
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        backgroundImage:
                                            AssetImage(image.profileImage),
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
                                        child: Container(
                                          height: 50,
                                          width: Get.width * 0.65,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              border: Border.all(
                                                  color: appcolor.blueColor)),
                                          child: Center(
                                              child: Text(
                                                  'Write are something here..')),
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                                // Divider(
                                //   thickness: 5,
                                //   color: Colors.grey.shade300,
                                //   indent: 0,
                                //   endIndent: 0,
                                // ),
                                // Padding(
                                //   padding: const EdgeInsets.only(left: 8),
                                //   child: Row(
                                //     mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Text(
                                //         "Start at: ₹${widget.charges}/min",
                                //         style: TextStyle(
                                //             fontWeight: FontWeight.bold,
                                //             fontSize: 18),
                                //       ),
                                //       TextButton(
                                //           onPressed: () {
                                //             showModalBottomSheet(
                                //                 context: context,
                                //                 builder: (context) {
                                //                   return ViewPackage();
                                //                 });
                                //           },
                                //           child: Row(
                                //             children: [
                                //               Text(
                                //                 "View Package",
                                //                 style: TextStyle(),
                                //               ),
                                //             ],
                                //           ))
                                //     ],
                                //   ),
                                // ),
                                Divider(
                                  thickness: 5,
                                  color: Colors.grey.shade300,
                                  indent: 0,
                                  endIndent: 0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 110,
                                      child: IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        GallarySection()));
                                          },
                                          icon: Row(
                                            children: [
                                              Icon(Icons.photo_outlined),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Gallery",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )),
                                    ),
                                    Container(
                                      width: 150,
                                      child: IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        Reviews()));
                                          },
                                          icon: Row(
                                            children: [
                                              Icon(Icons.reviews),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Review",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                                // Divider(
                                //   thickness: 5,
                                //   color: Colors.grey.shade300,
                                //   indent: 0,
                                //   endIndent: 0,
                                // ),
                                // const SizedBox(
                                //   height: 15,
                                // ),
                                // Row(
                                //   mainAxisAlignment:
                                //   MainAxisAlignment.spaceAround,
                                //   children: [
                                //     // Column(
                                //     //   children: [
                                //     //     CustomIconButton(
                                //     //       icon: (Icons.call),
                                //     //       onPressed: () {
                                //     //         showModalBottomSheet(
                                //     //             isScrollControlled: true,
                                //     //             context: context,
                                //     //             builder: (context) {
                                //     //               return ViewCall(name: widget.name!,);
                                //     //             });
                                //     //       },
                                //     //     ),
                                //     //
                                //     //   ],
                                //     // ),
                                //     // Column(
                                //     //   children: [
                                //     //     CustomIconButton(
                                //     //       icon: (Icons.video_call),
                                //     //       onPressed: () {
                                //     //         showModalBottomSheet(
                                //     //             isScrollControlled: true,
                                //     //             context: context,
                                //     //             builder: (context) {
                                //     //               return ViewVideoCall(name: widget.name!,);
                                //     //             });
                                //     //       },
                                //     //     ),
                                //     //
                                //     //   ],
                                //     // ),
                                //     // Column(
                                //     //   children: [
                                //     //     CustomIconButton(
                                //     //       icon: (Icons
                                //     //           .chat_bubble_outline_outlined),
                                //     //       onPressed: () {
                                //     //         showModalBottomSheet(
                                //     //             isScrollControlled: true,
                                //     //             context: context,
                                //     //             builder: (context) {
                                //     //               return ViewChat(name: widget.name!,);
                                //     //             });
                                //     //
                                //     //       },
                                //     //     ),
                                //     //
                                //     //   ],
                                //     // )
                                //   ],
                                // ),
                                // const SizedBox(
                                //   height: 10,
                                // ),
                                Divider(
                                  thickness: 5,
                                  color: Colors.grey.shade300,
                                  indent: 0,
                                  endIndent: 0,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: About(
                                    work: 'NTT Data Inc,Nsez Sector 144 Noida',
                                    home: 'Noida, India',
                                    Location: 'Haridwar',
                                    follower: '1123',
                                  ),
                                ),

                                const SizedBox(
                                  height: 10,
                                ),

                                Divider(
                                  thickness: 5,
                                  color: Colors.grey.shade300,
                                  indent: 0,
                                  endIndent: 0,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // Schedules(profession: widget.profession!),

                                ///////////////////////////////////// take to this lawyer scheduling a call //////////////////
                                Container(
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Take to this ${widget.profession} by\n scheduling a call",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors
                                                                  .blueAccent),
                                                  onPressed: () {
                                                    showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        context: context,
                                                        builder: (context) {
                                                          // int groupValue=0;
                                                          return Schedules(
                                                              profession: "");
                                                        });
                                                  },
                                                  child: Text(
                                                    "Slot",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ))
                                            ]))),
                                ///////////////////////////////////// take to this lawyer scheduling a call //////////////////
                                
                               
                                Divider(
                                  thickness: 5,
                                  color: Colors.grey.shade300,
                                  indent: 0,
                                  endIndent: 0,
                                ),


                               ///////////////////////////// post //////////////////////
                                Posts(
                                  content:
                                      'In “High Cost Lifestyles Can Lead to Loss of Autonomy,”, Daniel Paull MD writes about bad long-term decisions made by many high-income earners because the need a lot of money for luxury purchases.',
                                  profileurl: '${widget.profilePic}',
                                  imgurl: "${image.postImage1}",
                                  name: widget.name,
                                ),
                                ///////////////////////////// post //////////////////////
                                
                              ],
                            )),
                      ),
                      //Circle Avatar
                      Positioned(
                        width: MediaQuery.of(context).size.width,
                        top: -65,
                        left: 5,
                        child: Row(
                          children: [
                            Stack(children: [
                              InkWell(
                                onTap: () {
                                  dialog(context, 2);
                                },
                                child: CircleAvatar(
                                  radius: 75,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: SelectedImage1 != null
                                      ? FileImage(SelectedImage1!)
                                      : null,
                                  child: ClipOval(
                                      child: SelectedImage1 == null
                                          ? Image.asset('${widget.profilePic}')
                                          : null),
                                ),
                              ),
                              Positioned(
                                top: 120,
                                left: 120,
                                child: widget.isAvailable!
                                    ? Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                        ),
                                      )
                                    : Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                      ),
                              ),
                            ]),
                            Padding(
                              padding: const EdgeInsets.only(top: 60, left: 4),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              widget.name!,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            ),
                                            Icon(
                                              Icons.verified,
                                              color: Colors.blue,
                                              size: 16,
                                            ),
                                            // Text(
                                            //   'Verified',
                                            //   style: TextStyle(
                                            //     color: Colors.blue,
                                            //     fontSize: 12,
                                            //   ),
                                            // ),
                                          ],
                                        ),
                                        // IconButton(onPressed: (){
                                        //   List<String> itemToCheck = [
                                        //     widget.name!,
                                        //     widget.profession!,
                                        //     widget.rating!,
                                        //     widget.charges.toString(),
                                        //     widget.isAvailable.toString(),
                                        //   ];
                                        //   // if (!FavouriteItmes.favouriteItems.any((item) =>
                                        //   //     ListEquality().equals(item, itemToCheck))) {
                                        //   //   FavouriteItmes.favouriteItems.add(itemToCheck);
                                        //   // } else {
                                        //   //   FavouriteItmes.favouriteItems.removeWhere((item) =>
                                        //   //       ListEquality().equals(item, itemToCheck));
                                        //   // }
                                        //   // print(FavouriteItmes.favouriteItems);
                                        //   setState(() {
                                        //     isFav = !isFav;
                                        //   });
                                        // }, icon: Icon(Icons.favorite,color: isFav?Colors.red:Colors.grey.shade300,)
                                        // ),
                                        IconButton(
                                          onPressed: () {
                                            Get.to(profileEdit(
                                              profileimage: widget.profilePic,
                                              backgroundImage: widget.imgurl,
                                              name: widget.name,
                                              area: 'Delhi,Noida, Gurugram',
                                              profession: widget.profession,
                                            ));
                                          },
                                          icon: Icon(Icons.edit),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.work_outline_outlined),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        '${widget.skill},',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.grey.shade600),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(widget.profession!,
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      // Row(
                                      //   children: [
                                      //
                                      //
                                      //   ],
                                      // ),

                                      SizedBox(
                                        width: 10,
                                      ),
                                      // if (widget.isAvailable!)
                                      //   Text(
                                      //     "Online",
                                      //     style: TextStyle(
                                      //         color: Colors.black,
                                      //         fontWeight: FontWeight.bold),
                                      //   )
                                      // else
                                      //   Text(
                                      //     "Offline",
                                      //     style: TextStyle(
                                      //         color: Colors.black,
                                      //         fontWeight: FontWeight.bold),
                                      //   )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Sessions: (${widget.sessions})"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      // Container(

                                      //   height: 10,
                                      //   width: 10,
                                      //   decoration: BoxDecoration(
                                      //     shape: BoxShape.circle,
                                      //       color: Colors.green,
                                      //   ),
                                      // )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )),
    );
  }
}
               /////////////////////////////////////////////////////

class GallarySection extends StatefulWidget {
  const GallarySection({super.key});

  @override
  State<GallarySection> createState() => _GallarySectionState();
}

class _GallarySectionState extends State<GallarySection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gallery",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 3,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.42,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          // height: 200,
                          child: Image.asset("${image.postImage3}"),
                        ),
                        Divider(
                          height: 10,
                          //  color: Colors.grey,
                        ),
                        Image.asset(
                          "${image.postImage2}",
                        ),
                        Divider(
                          height: 10,
                          // color: Colors.grey,
                        ),
                        Container(
                          // height: 200,
                          child: Image.asset("${image.postImage1}"),
                        ),
                        Divider(
                          height: 10,
                          //color: Colors.grey,
                        ),
                        Image.asset(
                          "${image.profileImage}",
                        ),
                        Divider(
                          height: 10,
                          // color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0,
                  width: 5,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.534,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        // height: 200,
                        child: Image.asset("${image.postImage3}"),
                      ),
                      Divider(
                        height: 10,
                        // color: Colors.grey,
                      ),
                      Image.asset(
                        "${image.postImage2}",
                      ),
                      Divider(
                        height: 10,
                        // color: Colors.grey,
                      ),
                      Image.asset(
                        "${image.postImage1}",
                        height: 187,
                      ),
                      Divider(
                        height: 10,
                        // color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Image.asset("${image.postImage3}"),
            ),
            Divider(
              height: 10,
            ),
            Container(
              child: Image.asset("${image.postImage1}"),
            )
          ],
        ),
      ),
    );
  }
}

class ViewPackage extends StatefulWidget {
  const ViewPackage({
    super.key,
  });

  @override
  State<ViewPackage> createState() => _ViewPackageState();
}

class _ViewPackageState extends State<ViewPackage> {
  int selectedPackage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                "Session Package",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Total Duration: ",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "45 min",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        endIndent: 10,
                        indent: 10,
                        color: Colors.grey.shade300,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: selectedPackage,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedPackage = value!;
                                    });
                                  }),
                              //   SizedBox(width: 15,),
                              Text(
                                "Single Session",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("₹800",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orangeAccent)),
                          )
                        ],
                      ),
                      Divider(
                        endIndent: 10,
                        indent: 10,
                        color: Colors.grey.shade300,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: 2,
                                  groupValue: selectedPackage,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedPackage = value!;
                                    });
                                  }),
                              //SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pack of 2 Session",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 22,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          Colors.orangeAccent.withOpacity(0.25),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Save 10%",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("₹1400",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orangeAccent)),
                          )
                        ],
                      ),
                      Divider(
                        endIndent: 10,
                        indent: 10,
                        color: Colors.grey.shade300,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: 3,
                                  groupValue: selectedPackage,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedPackage = value!;
                                    });
                                  }),
                              // SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pack of 4 Session",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 22,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          Colors.orangeAccent.withOpacity(0.25),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Save 25%",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("₹2400",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orangeAccent)),
                          )
                        ],
                      ),
                      Divider(
                        endIndent: 10,
                        indent: 10,
                        color: Colors.grey.shade300,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: 4,
                                  groupValue: selectedPackage,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedPackage = value!;
                                    });
                                  }),
                              //SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pack of 6 Session",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 22,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          Colors.orangeAccent.withOpacity(0.25),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Save 40%",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("₹2880",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orangeAccent)),
                          )
                        ],
                      ),
                      Divider(
                        height: 5,
                        endIndent: 10,
                        indent: 10,
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              //backgroundColor: Colors.orangeAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            "Submit",
                            style: TextStyle(fontSize: 20),
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ViewChat extends StatefulWidget {
  ViewChat({super.key, required this.name});
  String name;

  @override
  State<ViewChat> createState() => _ViewChatState();
}

class _ViewChatState extends State<ViewChat> {
  int selectedPackage = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.85,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Text(
                  "What can you ask me:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  children: [
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "How to manage mental health/peace?",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  children: [
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "How to manage my relationships?",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  children: [
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "How to understand myself better?",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Text(
                  "Who can reach me out?:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  children: [
                    CustomContainer("Students", 90),
                    SizedBox(
                      width: 15,
                    ),
                    CustomContainer("Young Adults", 110),
                    SizedBox(
                      width: 15,
                    ),
                    // CustomContainer("Teenagers"),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  children: [
                    CustomContainer("Working Professions", 180),
                    SizedBox(
                      width: 15,
                    ),
                    CustomContainer("Teenagers", 110),
                    SizedBox(
                      width: 15,
                    ),
                    // CustomContainer("Teenagers"),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  children: [
                    CustomContainer("Job Aspirants", 120),
                    SizedBox(
                      width: 10,
                    ),
                    CustomContainer("Couples", 100),
                    SizedBox(
                      width: 10,
                    ),
                    CustomContainer("Parents", 100)
                    // CustomContainer("Teenagers"),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(
                  "What can I help you achieve:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: CustomChatCard(
                        Icons.heart_broken, "  Managing \n Relationship"),
                  ),
                  Container(
                    height: 100,
                    width: 2,
                    color: Colors.grey.shade400,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: CustomChatCard(
                        Icons.balance, "  Emotional \n    Stability"),
                  ),
                  Container(
                    height: 100,
                    width: 2,
                    color: Colors.grey.shade400,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: CustomChatCard(Icons.person, "  Self-Care"),
                  ),
                  // Container(height: 100,width: 2,color: Colors.grey.shade400,)
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomChatButton(
                      Icons.calendar_month,
                      "Book",
                      () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>BookChat(name: widget.name,)));
                      },
                      Colors.white,
                    ),
                    CustomChatButton(Icons.chat_bubble, "Chat", () {
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatRateScreen(name: widget.name,)));
                    }, const Color.fromARGB(255, 74, 142, 197),
                        iconColor: Colors.white, textColor: Colors.white)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget CustomChatButton(
    IconData icon, String text, Function()? onTap, Color color,
    {Color iconColor = Colors.purple, Color textColor = Colors.redAccent}) {
  return Container(
    width: 150,
    height: 50,
    child: ElevatedButton(
      onPressed: onTap,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            Text(
              text,
              style: TextStyle(
                  color: textColor, fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
      ),
      style: ElevatedButton.styleFrom(
          side: BorderSide(color: Colors.grey),
          backgroundColor: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    ),
  );
}

Widget CustomContainer(String name, double width) {
  return Container(
    height: 40,
    width: width,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 255, 175, 64).withOpacity(0.4),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Center(
        child: Text(
      name,
      style: TextStyle(
          color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 15),
    )),
  );
}

Widget CustomChatCard(IconData icon, String text) {
  return Column(
    children: [
      Icon(
        icon,
        color: Colors.red,
        size: 40,
      ),
      Text(
        text,
        style: TextStyle(fontSize: 17),
      )
    ],
  );
}

class BookChat extends StatefulWidget {
  BookChat({super.key, required this.name});
  String name;

  @override
  State<BookChat> createState() => _BookChatState();
}

class _BookChatState extends State<BookChat> {
  int selectedPackage = 0;
  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Image.asset("assets/schedule_call.png"),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "Schedule your Chat",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "*Date",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DateTimer()
                          // child: TextFormField(
                          //   decoration: InputDecoration(
                          //     border: InputBorder.none,
                          //     hintText: "Select Preferred Date",
                          //   ),
                          // ),
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "*Preferred time",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                            controller: input1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Select Preferred time",
                            ),
                            readOnly:
                                true, //set it true, so that user will not able to edit text
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SlotBookingScreen(
                                            text1: input1,
                                          )));
                            }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "*Second preferred time",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    //  child: SlotBookingScreen(),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: input2,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Select a second preferred time",
                          ),
                          readOnly: true,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SlotBookingScreen(
                                          text1: input2,
                                        )));
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: selectedPackage,
                            onChanged: (value) {
                              setState(() {
                                selectedPackage = value!;
                              });
                            }),
                        Text(
                          "Chat",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Radio(
                            value: 2,
                            groupValue: selectedPackage,
                            onChanged: (value) {
                              setState(() {
                                selectedPackage = value!;
                              });
                            }),
                        Text(
                          "Call",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Radio(
                            value: 3,
                            groupValue: selectedPackage,
                            onChanged: (value) {
                              setState(() {
                                selectedPackage = value!;
                              });
                            }),
                        Text(
                          "Video Call",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              //backgroundColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            "Cancel",
                            style: TextStyle(fontSize: 15),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatRateScreen(name: widget.name!)));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor:
                                  const Color.fromARGB(255, 98, 64, 251)),
                          child: Text(
                            "Submit",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// class ChatRateScreen extends StatefulWidget {
//   ChatRateScreen({super.key,required this.name});
//   String name;
//
//   @override
//   State<ChatRateScreen> createState() => _ChatRateScreenState();
// }
//
// class _ChatRateScreenState extends State<ChatRateScreen> {
//   TextEditingController time = new TextEditingController();
//   void initState() {
//     super.initState();
//     // Fetch user data from API using BuildContext
//     time.text="₹0";
//   }
//   // List<String> values = ['5 min', '10 min', '15 min', '20 min','30 min','60 min'];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10,vertical:50 ),
//             child: Text("For how long do you want to talk?",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 TappableContainer(
//                   value: '5 min',
//                   notOffer: true,
//                   onTap: (newValue) {
//                     time.text = "₹25";
//                     setState(() {
//
//                     });
//                   },
//                   color: Colors.orange,
//                 ),
//                 TappableContainer(
//                   value: '10 min',
//                   notOffer: true,
//                   onTap: (newValue) {
//                     time.text = "₹45";
//                     setState(() {
//
//                     });
//                   },
//                   color: Colors.orange,
//                 ),
//                 TappableContainer(
//                   value: '15 min',
//                   notOffer: true,
//                   onTap: (newValue) {
//                     time.text = "₹60";
//                     setState(() {
//
//                     });
//                   },
//                   color: Colors.orange,
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 TappableContainer(
//                   value: '20 min',
//                   notOffer: true,
//                   onTap: (newValue) {
//                     time.text = "₹75";
//                     setState(() {
//
//                     });
//                   },
//                   color: Colors.orange,
//                 ),
//                 TappableContainer(
//                   value: '30 min',
//                   notOffer: true,
//                   onTap: (newValue) {
//                     time.text = "₹100";
//                     setState(() {
//
//                     });
//                   },
//                   color: Colors.orange,
//                 ),
//                 TappableContainer(
//                   value: '60 min',
//                   notOffer: true,
//                   onTap: (newValue) {
//                     time.text = "₹120";
//                     setState(() {
//
//                     });
//                   },
//                   color: Colors.orange,
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 15),
//             child: Container(
//               height: 60,
//               width: MediaQuery.of(context).size.width*0.94,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.green.shade200
//               ),
//               child: Row(
//                 children: [
//                   Image.asset("assets/rate_logo.png"),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Get 25% OFF on your first chat",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
//                       Text("Use Code:COMFORT",style: TextStyle(fontSize: 18),)
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Divider(
//             thickness: 1,
//             indent: 10,
//             endIndent: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Text("Total Amount:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
//                 Text(time.text.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
//               ],
//             ),
//           ),
//           SizedBox(
//             height:MediaQuery.of(context).size.height*0.3 ,
//           ),
//           time.text.toString()!= "₹0"?
//           Container(
//             width: MediaQuery.of(context).size.width*0.9,
//             child: ElevatedButton(onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen(name: widget.name)));
//             },
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orangeAccent,
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
//                 ),
//                 child:Text("Proceed",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
//           ):Text("Please select a chat duration",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
//         ],
//       ),
//     );
//   }
// }

class About extends StatefulWidget {
  About(
      {super.key,
      required this.work,
      required this.home,
      required this.Location,
      required this.follower});
  String work;
  String home;
  String Location;
  String follower;

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "About Us",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          // SizedBox(height: 20,),
          // Row(children: [
          //   // Icon(Icons.work_outline_outlined),
          //   // SizedBox(width: 10,),
          //   // Text("Work At ${widget.work}",textAlign: TextAlign.start,style: TextStyle(fontSize: 16))
          // ],),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(Icons.home_outlined),
              SizedBox(
                width: 10,
              ),
              Text("Lives in ${widget.home}",
                  textAlign: TextAlign.start, style: TextStyle(fontSize: 16))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(Icons.location_pin),
              SizedBox(
                width: 10,
              ),
              Text("From ${widget.Location}",
                  textAlign: TextAlign.start, style: TextStyle(fontSize: 16))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(Icons.follow_the_signs_rounded),
              SizedBox(
                width: 10,
              ),
              Text(
                "Followed by${widget.follower} people",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Schedules extends StatefulWidget {
  Schedules({super.key, required this.profession});
  String profession;

  @override
  State<Schedules> createState() => _SchedulesState();
}

class _SchedulesState extends State<Schedules> {
  int selectedPackage = 0;
  int selectedappointment = 0;
  bool radio = true;
  TextEditingController timeinput1 = TextEditingController();
  TextEditingController timeinput2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Schedule your Call",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: selectedappointment,
                    onChanged: (value) {
                      setState(() {
                        radio = true;
                        selectedappointment = value!;
                      });
                    }),
                Text(
                  "Online Appointment",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: 10,
                ),
                Radio(
                    value: 2,
                    groupValue: selectedappointment,
                    onChanged: (value) {
                      setState(() {
                        radio = false;
                        selectedappointment = value!;
                      });
                    }),
                Text(
                  "Office/Clinic",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "*Date",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DateTimer()
                  // child: TextFormField(
                  //   decoration: InputDecoration(
                  //     border: InputBorder.none,
                  //     hintText: "Select Preferred Date",
                  //   ),
                  // ),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "*Preferred time",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                    controller: timeinput1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Select Preferred time",
                    ),
                    readOnly:
                        true, //set it true, so that user will not able to edit text
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SlotBookingScreen(
                                    text1: timeinput1,
                                  )));
                    }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "*Second preferred time",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            //  child: SlotBookingScreen(),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  controller: timeinput2,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Select a second preferred time",
                  ),
                  readOnly: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SlotBookingScreen(
                                  text1: timeinput2,
                                )));
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          radio
              ? Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: selectedPackage,
                          onChanged: (value) {
                            setState(() {
                              selectedPackage = value!;
                            });
                          }),
                      Text(
                        "Chat",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Radio(
                          value: 2,
                          groupValue: selectedPackage,
                          onChanged: (value) {
                            setState(() {
                              selectedPackage = value!;
                            });
                          }),
                      Text(
                        "Call",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Radio(
                          value: 3,
                          groupValue: selectedPackage,
                          onChanged: (value) {
                            setState(() {
                              selectedPackage = value!;
                            });
                          }),
                      Text(
                        "video Call",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                )
              : Container(
                  height: 0,
                  width: 0,
                ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      //backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 15),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color.fromARGB(255, 98, 64, 251)),
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class DateTimer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DateTimer();
  }
}

class _DateTimer extends State<DateTimer> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextField(
      controller: dateInput,
      //editing controller of this TextField
      decoration: InputDecoration(
          //icon of text field
          hintText: "Select preferred date" //label text of field
          ),
      readOnly: true,
      //set it true, so that user will not able to edit text
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            //DateTime.now() - not to allow to choose before today.
            lastDate: DateTime(2100));

        if (pickedDate != null) {
          print(
              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          print(
              formattedDate); //formatted date output using intl package =>  2021-03-16
          setState(() {
            dateInput.text =
                formattedDate; //set output date to TextField value.
          });
        } else {}
      },
    ));
  }
}

class RatingReviews extends StatefulWidget {
  RatingReviews({super.key, required this.ratings});
  String ratings = "4.8";

  @override
  State<RatingReviews> createState() => _RatingReviewsState();
}

class _RatingReviewsState extends State<RatingReviews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${widget.ratings}/5",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                "Based on 148 reviews",
                style: TextStyle(color: Colors.grey.shade700),
              ),
              // Container(
              //   // width: 350,
              //   child: RatingBar.builder(
              //     initialRating: 3,
              //     minRating: 1,
              //     direction: Axis.horizontal,
              //     allowHalfRating: false,
              //     itemCount: 5,
              //     itemPadding: EdgeInsets.symmetric(horizontal: 1),
              //     itemBuilder: (context, _) => Icon(
              //       Icons.star,
              //       color: Colors.green,
              //     ),
              //     onRatingUpdate: (rating) {
              //       //ratings=rating;
              //     },
              //   ),
              // ),
            ],
          ),
          Container(
            height: 120,
            width: 1,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              ratingbars(
                rating_num: 5,
                width1: 80,
                width2: 40,
              ),
              ratingbars(rating_num: 4, width1: 60, width2: 60),
              ratingbars(rating_num: 3, width1: 20, width2: 100),
              ratingbars(rating_num: 2, width1: 15, width2: 105),
              ratingbars(rating_num: 1, width1: 10, width2: 110)
            ],
          )
        ],
      ),
    );
  }
}

class ratingbars extends StatelessWidget {
  ratingbars(
      {super.key,
      required this.rating_num,
      required this.width1,
      required this.width2});
  int rating_num;
  double width1;
  double width2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "${rating_num}",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 10,
              width: width1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  color: Colors.green),
            ),
            Container(
              height: 10,
              width: width2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: Colors.grey.shade400),
            )
          ],
        )
      ],
    );
  }
}

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
  void handleClick(int item) {
    switch (item) {
      case 0:
        break;
      case 1:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User's Photo
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text("29 nov")
                    ],
                  ),
                ],
              ),
              PopupMenuButton<int>(
                onSelected: (item) => handleClick(item),
                itemBuilder: (context) => [
                  PopupMenuItem<int>(
                      value: 0,
                      child: TextButton(
                        onPressed: () {
                          Get.to(newPostCreate(
                            imageurl: widget.imgurl.toString(),
                            detail: widget.content.toString(),
                            image: widget.profileurl.toString(),
                            name: widget.name.toString(),
                          ));
                        },
                        child: Text(
                          'Edit',
                          style: TextStyle(color: Colors.black),
                        ),
                      )),
                  PopupMenuItem<int>(
                      value: 1,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Delete',
                          style: TextStyle(color: Colors.black),
                        ),
                      )),
                ],
              ),
            ],
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
                      )
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

class ReviewWidget extends StatelessWidget {
  final String avatarName;
  final String yourName;
  final String stateAndCountry;
  final int rating;
  final String review;

  ReviewWidget({
    required this.avatarName,
    required this.yourName,
    required this.stateAndCountry,
    required this.rating,
    required this.review,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Text(
                      avatarName,
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        yourName,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(stateAndCountry),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        index < rating ? Icons.star : Icons.star_border,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              //  Row(
              //   children: List.generate(
              //     5,
              //     (index) => Icon(
              //       index < rating ? Icons.star : Icons.star_border,
              //       color: Colors.green,
              //     ),
              //   ),
              // ),
              SizedBox(width: 5),
              //  Text('$rating stars'),
              SizedBox(height: 10),
              Text(
                review,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                textAlign: TextAlign.justify,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //             backgroundColor: Colors.red
              //         ),
              //         onPressed: (){}, child: Text('Delete',style: TextStyle(color: Colors.white),)),
              //     ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //             backgroundColor: Color(0xff0099cc)
              //         ),
              //         onPressed: (){}, child: Text('Edit',style: TextStyle(color: Colors.white),)),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  ChatScreen({required this.name});
  String name;
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _messageController = TextEditingController();
  List<ChatMessage> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(
          'Chat with ${widget.name}',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _messages[index];
              },
            ),
          ),
          _buildInputField(),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'Type a message...',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              _sendMessage();
            },
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        _messages.add(
          ChatMessage(
            text: _messageController.text,
            isUser: true,
          ),
        );
        _messageController.clear();
      });
    }
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isUser;

  ChatMessage({required this.text, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment:
            isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isUser) CircleAvatar(), // Display avatar for received messages
          Container(
            decoration: BoxDecoration(
              color: isUser ? Colors.green : Colors.grey,
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(5.0),
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
          if (isUser)
            CircleAvatar(
              child: Text("SB"),
            ), // Display avatar for sent messages
        ],
      ),
    );
  }
}

class SlotBookingScreen extends StatefulWidget {
  SlotBookingScreen({
    required this.text1,
  });
  TextEditingController text1 = TextEditingController();

  @override
  _SlotBookingScreenState createState() => _SlotBookingScreenState();
}

class _SlotBookingScreenState extends State<SlotBookingScreen> {
  bool isSelected = false;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  bool isSelected6 = false;
  bool isSelected7 = false;
  List<Slot> slots = List.generate(
    10,
    (index) {
      DateTime startTime = DateTime.now().add(Duration(hours: index + 9));
      DateTime endTime = startTime.add(Duration(minutes: 60));
      return Slot(
        id: index,
        startTime: startTime,
        endTime: endTime,
        isBooked: false,
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slot Booking'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('8:00 - 8:30'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: Text(
                    isSelected == true ? 'Booked' : 'Book',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('8:30 - 9:00'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSelected1 = !isSelected1;
                    });
                  },
                  child: Text(
                    isSelected1 == true ? 'Booked' : 'Book',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('9:00 - 9:30'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSelected2 = !isSelected2;
                    });
                  },
                  child: Text(
                    isSelected2 == true ? 'Booked' : 'Book',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('9:30 - 10:00'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSelected3 = !isSelected3;
                    });
                  },
                  child: Text(
                    isSelected3 == true ? 'Booked' : 'Book',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('11:00 - 11:30'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSelected4 = !isSelected4;
                    });
                  },
                  child: Text(
                    isSelected4 == true ? 'Booked' : 'Book',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('11:30 - 12:00'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSelected5 = !isSelected5;
                    });
                  },
                  child: Text(
                    isSelected5 == true ? 'Booked' : 'Book',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('12:00 - 12:30'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSelected6 = !isSelected6;
                    });
                  },
                  child: Text(
                    isSelected6 == true ? 'Booked' : 'Book',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('1:00 - 1:30'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSelected7 = !isSelected7;
                    });
                  },
                  child: Text(
                    isSelected7 == true ? 'Booked' : 'Book',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ],
      ),

      // ListView.builder(
      //   itemCount: slots.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text(
      //         '${slots[index].startTime.hour}:${slots[index].startTime.minute} - ${slots[index].startTime.hour}:${slots[index].startTime.minute+30}',
      //       ),
      //       trailing: slots[index].isBooked
      //           ? ElevatedButton(
      //               onPressed: () {
      //
      //               },
      //               child: Text('Booked'),
      //               style: ElevatedButton.styleFrom(
      //                 primary: Colors.grey,
      //               ),
      //             )
      //           : ElevatedButton(
      //               onPressed: () {
      //                 setState(() {
      //                   slots[index].isBooked = true;
      //
      //                   widget.text1.text ="${slots[index].startTime.hour}:${slots[index].startTime.minute} - ${slots[index].endTime.hour}:${slots[index].endTime.minute}";
      //
      //                 });
      //               },
      //               child: Text('Book'),
      //             ),
      //     );
      //   },
      // ),
    );
  }
}

class Slot {
  final int id;
  final DateTime startTime;
  final DateTime endTime;
  bool isBooked;

  Slot({
    required this.id,
    required this.startTime,
    required this.endTime,
    required this.isBooked,
  });
}
