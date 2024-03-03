import 'package:flutter/material.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:solution_parnter/Screen/Drawer/terms&condition.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Widget/url_launch.dart';


class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  launchWhatsapp(context) async {
    var whatsapp = "+91 8979034037";
    var whatsappAndroid = Uri.parse("whatsapp://send?phone=$whatsapp&text=Hello, I need Your Help");
    if (await canLaunchUrl(whatsappAndroid,)) {
      await launchUrl(whatsappAndroid,);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("WhatsApp is not installed on the device"),
        ),
      );
    }
  }

  @override
  bool switchval=false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Container(
          child: Row(
            children: [

              //  Text("Hi,Saurabh",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
              SizedBox(
                width: 25,
              ),
              IconButton(onPressed:() {

              }, icon: Icon(Icons.notifications_outlined)),
              IconButton(onPressed:() {
              }, icon: Icon(Icons.favorite_outline,)),

            ],
          ),
        ),
      ],
        elevation: 5,
      ),
      body: Column(

        children: [
          SizedBox(height: 30,),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.43,
              width: MediaQuery.of(context).size.width*0.92,

              // color: Colors.grey.shade300,
              child: Card(
                // color: Colors.white,
                elevation: 5,
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("PERSONAL",style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),),
                        )),
                    customsupportCardElements(text1: "Review", text2:"Manage Your Reviews", imgurl: "assets/message.png", onTap: (){
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewScreen()));
                    },),
                    SizedBox(height: 12,),
                    customsupportCardElements(text1: "Delete Account", text2: "manage your account here", imgurl:"assets/delete.png", onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DeleteAccount()));
                    },),
                    SizedBox(height: 12,),
                    customsupportCardElements(text1: "Whatsapp Connect ", text2:"Our team is available 24/7", imgurl:"assets/support.png", onTap: (){
                      launchWhatsapp(context);
                    },),
                    SizedBox(height: 12,),
                    customsupportCardElements(text1: "Contact Us", text2:"Our team is available 24/7", imgurl: "assets/call.png", onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUsScreen()));
                    })
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.27,
              width: MediaQuery.of(context).size.width*0.92,
              // color: Colors.grey.shade300,
              child: Card(
                // color: Colors.white,
                elevation: 5,
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("APP",style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: CircleAvatar(
                                // backgroundColor: Colors.white,
                                //radius: 22,
                                backgroundImage: AssetImage("assets/bell.png"),

                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Push Notifications",style: TextStyle(fontWeight: FontWeight.bold),),
                                Text("Manage notification settings",style: TextStyle(color: Colors.grey.shade700,),)
                              ],
                            )
                          ],
                        ),
                        Switch(value: switchval, onChanged:(value){
                          setState(() {
                            switchval=value;
                            if(switchval){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>))
                            }
                            //print(switchval);
                          });
                        })
                      ],),
                    SizedBox(height: 12,),
                    customsupportCardElements(text1: "Terms & Policies", text2:"Terms & policies found here", imgurl: "assets/pen.png", onTap: null)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class customsupportCardElements extends StatelessWidget {
  customsupportCardElements({
    super.key,
    required this.text1,
    required this.text2,
    required this.imgurl,
    required this.onTap

  });
  String text1;
  String text2;
  String imgurl;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                  // backgroundColor: Colors.white,
                  // radius: 22,
                  backgroundImage: AssetImage(imgurl),

                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text1,style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(text2,style: TextStyle(color: Colors.grey.shade700,),)
                ],
              )
            ],
          ),
          IconButton(onPressed: (){}, icon:Icon(Icons.navigate_next,color: Colors.grey.shade700,))
        ],),
    );
  }



}



class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        // iconTheme: IconThemeData(color: appcolor.appcolors),
        title: Text("Contact Us",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(children: [
        Center(
            child: Image.asset(image.contactimage)),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            contact_us_widget(imgurl: "${image.whatsaap}", text:"Whatsapp", ontap: (){
              launc().launchWhatsapp(context,'9625901701');
            }),
            contact_us_widget(imgurl: "${image.telephone}", text:"Call Us", ontap:(){
              launc().makePhoneCall('9625901701');
            }),
            contact_us_widget(imgurl: "${image.gmail}", text:"Mail Us", ontap:(){
              launc().makePhoneEmail('info@solutnkey.com', 'SolutionKey', 'all solution in this app');
            })
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            contact_us_widget(imgurl: "${image.twitter}", text:"Twitter", ontap:null),
            contact_us_widget(imgurl: "${image.youtube}", text: "Youtube", ontap: null),
            SizedBox(
              width: 1,
            )
          ],
        ),
        SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: contact_us_widget(imgurl: "${image.map}", text:"Address", ontap:(){
                launc().launchMap('Shriram Complex,Near SPR Society,Sector 82 Faridabad');
              }),
            ),
            SizedBox(width: 20,),
            Container(
                child: Text(" Shriram Complex, \nNear SPR Society, \nSector 82 Faridabad",textAlign: TextAlign.start,))
          ],
        )
      ]),
    );
  }
}

class contact_us_widget extends StatelessWidget {
  contact_us_widget({
    super.key,
    required this.imgurl,required this.text,required this.ontap
  });
  String imgurl;
  String text;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          CircleAvatar(
            // radius: 25,
            backgroundColor: Colors.grey.shade100,
            child: Image.asset(imgurl),
          ),Text(text,style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}


class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {

  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text("Delete Account",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "We are sorry to see you go!",style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Text("This is irreversible action. please read the below\n notice carefully before proceeding with account\n deletion",textAlign: TextAlign.start,style: TextStyle(color:const Color.fromARGB(255, 177, 36, 36),fontWeight: FontWeight.bold ),),
            SizedBox(height: 30,),
            Text(" Please note that if you proceed to delete your account, you will lose access to this account and all the data related to it. You will no longer be able to access data linked to this account  when you sign up again.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("If you still wish to proceed with the account deletion, please ensure you have read and understood the following ",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("• You will not be able to access or request access to order history,invoices, saved payment methods, saved addresses, shortlists or any personal information linked to your account.",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("• Solution Key will maintain any data required for legal and compliance purposes. The same will not be deleted from our systems",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: ischecked, onChanged:(value){
                  setState(() {
                    ischecked=value!;
                  });
                }),


                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>termsandCondition()));
                  }, child:Text("I have read and agree to the terms &\n conditions",style: TextStyle(color: appcolor.blueColor),)),
                )

              ],),
            SizedBox(
              height: 10,
            ),

            InkWell(
              onTap: (){
                showDialog(context: context, builder:(context)=>AlertDialog(
                  title: Text("Alert!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: const Color.fromARGB(255, 164, 34, 25)),),
                  content: Text("Are You sure You want to delete your account?",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  actions: [ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  }, child:Text("Yes")),
                    SizedBox(width: 70,),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child:Text("No"))],
                ));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.85,
                decoration: BoxDecoration(border:Border.all(color: Colors.grey.shade500),borderRadius: BorderRadius.circular(7) ),
                child: Center(child: Text("Delete Account",style: TextStyle(color: Colors.grey.shade600),)),
              ),
            )

          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:solution_key/appcolor.dart';
// import 'package:solution_key/seachPage/SeacrhPage.dart';

// class LegalNotice extends StatefulWidget {
//   const LegalNotice({super.key});

//   @override
//   State<LegalNotice> createState() => _LegalNoticeState();
// }

// class _LegalNoticeState extends State<LegalNotice> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// appBar: AppBar(actions: [
//                   Container(
//          child: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 10,right: 10),
//               child: InkWell(
//                 onTap: () {

//                 },
//                 highlightColor: Colors.transparent,
//                 child: CircleAvatar(
//                   radius: 30,
//                   child: Text("SB"),
//                   backgroundColor: appcolor.greyColor,

//                 ),
//               ),
//             ),
//             Text("Hi,Saurabh",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
//             SizedBox(
//               width: 25,
//             ),
//             IconButton(onPressed:() {

//             }, icon: Icon(Icons.notifications_outlined)),
//             IconButton(onPressed:() {

//             }, icon: Icon(Icons.favorite_outline,)),

//           ],
//          ),
//         ),
//   ],
//   elevation: 5,
//   ),
//       body: Column(
//         children: [
//             Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Card(
//                   elevation: 5,
//                   child: Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(11)),
//                       color: appcolor.greyColor
//                     ),
//                     width: MediaQuery.of(context).size.width,
//                     child: Container(
//                     child: Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               Icon(Icons.search,color:appcolor.black,),
//                               SizedBox(width: 10,),
//                               InkWell(
//                                   onTap: (){
//                                     showSearch(context: context, delegate: Searchpage());
//                                   },
//                                   child: Text('What are you looking for?',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),)),
//                             ],
//                           ),


//                         ],
//                       ),
//                     )
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 100,
//               ),
//        Image.asset('assets/NodataFound.png')


//         ],
//       ),
//     ) ;
//   }
// }