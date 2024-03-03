// import 'package:flutter/material.dart';
// import '../Screen/in-person.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // home: Information_Screen(),
//     );
//   }
// }
// class Consultation_Timings extends StatefulWidget {
//   const Consultation_Timings({super.key});
//
//   @override
//   State<Consultation_Timings> createState() => _Consultation_TimingsState();
// }
//
// class _Consultation_TimingsState extends State<Consultation_Timings> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 2,
//         child: Scaffold(
//           floatingActionButton: Padding(
//             padding: const EdgeInsets.only(left: 30),
//             child: Container(
//               height: MediaQuery.of(context).size.width*0.15,
//               width: double.maxFinite,
//               decoration: BoxDecoration(
//                 color:Color(0xFF01038A),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: GestureDetector(
//                 onTap: (){
//
//                 },
//                 child: Center(child: Text("Save Changes", style: TextStyle(color: Colors.white, fontSize: 18),)),
//               ),
//             ),
//           ),
//           appBar: AppBar(
//             title: Text("Consultation Timings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
//             automaticallyImplyLeading: false,
//             bottom: PreferredSize(
//               preferredSize: Size.fromHeight(20),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: TabBar(
//                   indicatorWeight: 3.0,
//                   indicatorSize: TabBarIndicatorSize.tab,
//                   indicatorColor:Color(0xFF01038A),
//                   tabs: [
//                     CustomTab(
//                       label: "Tele-Consult",
//                     ),
//                     CustomTab(label: "In-Person"),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           body: TabBarView(children: [
//             Container(
//               margin: EdgeInsets.only(top: 1),
//               child: TeleConsult(),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 1),
//               child: InPerson(),
//             ),
//
//           ],
//
//           ),
//         )
//     );
//   }
// }
//
// class CustomTab extends StatelessWidget {
//   // final String imagePath;
//   final String label;
//
//   CustomTab({ required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return Tab(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           // Image.asset(
//           //   imagePath,
//           //   width: 25,
//           //   height: 25,
//           // ),
//           Text(label, style: TextStyle(fontSize: 15),),
//         ],
//       ),
//     );
//   }
// }
//
// class TeleConsult extends StatefulWidget {
//   const TeleConsult({super.key});
//
//   @override
//   State<TeleConsult> createState() => _TeleConsultState();
// }
//
// class _TeleConsultState extends State<TeleConsult> {
//
//   List<String> weekDays = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
//   List<Color> boxOneColors = [
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//   ];
//   List<bool> _textOneColor = [false, false, false, false, false, false, false];
//
//   List<Color> boxTwoColors = [
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//   ];
//   List<bool> _textTwoColor = [false, false, false, false, false, false, false];
//
//   void _changeTextOneColor(int index) {
//     setState(() {
//       _textOneColor[index] = !_textOneColor[index];
//     });
//   }
//
//   void _changeTextTwoColor(int index) {
//     setState(() {
//       _textTwoColor[index] = !_textTwoColor[index];
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Timings"),
//               SizedBox(height: 10,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: List.generate(
//                   7,
//                       (index) => GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         boxOneColors[index] = boxOneColors[index] == Colors.grey.shade200
//                             ? Color(0xFF01038A)
//                             : Colors.grey.shade200;
//                         _changeTextOneColor(index);
//                       });
//                     },
//                     child: Container(
//                       width: 30,
//                       height: 30,
//                       color: boxOneColors[index],
//                       child: Center(
//                         child: Text(
//                           weekDays[index],
//                           style: TextStyle(
//                             color: _textOneColor[index] ? Colors.white : Colors.grey,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Text("Morning Session"),
//               SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300, width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("8:00 AM")),
//                   ),
//                   Spacer(),
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300,width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("2:00 PM")),
//                   ),
//                   SizedBox(width: 10,),
//                   CircleAvatar(
//                     backgroundColor: Colors.grey.shade200,
//                     radius: 15,
//                     child: Icon(Icons.delete,size: 20),
//                   )
//
//
//                 ],
//               ),
//               SizedBox(height: 10,),
//               Text("Afternoon Session"),
//               SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300, width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("2:00 PM")),
//                   ),
//                   Spacer(),
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300,width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("6:00 PM")),
//                   ),
//                   SizedBox(width: 10,),
//                   CircleAvatar(
//                     backgroundColor: Colors.grey.shade200,
//                     radius: 15,
//                     child: Icon(Icons.delete,size: 20),
//                   )
//                 ],
//               ),
//               SizedBox(height: 10,),
//
//               Divider(),
//
//               SizedBox(height: 10,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Timings 2"),
//                   CircleAvatar(
//                     backgroundColor:Color(0xFF01038A),
//                     radius: 13,
//                     child: Icon(Icons.delete,size: 20),
//                   )
//                 ],
//               ),
//               SizedBox(height: 10,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: List.generate(
//                   7,
//                       (index) => GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         boxTwoColors[index] = boxTwoColors[index] == Colors.grey.shade200
//                             ? Color(0xFF01038A)
//                             : Colors.grey.shade200;
//                         _changeTextTwoColor(index);
//                       });
//                     },
//                     child: Container(
//                       width: 30,
//                       height: 30,
//                       color: boxTwoColors[index],
//                       child: Center(
//                         child: Text(
//                           weekDays[index],
//                           style: TextStyle(
//                             color: _textTwoColor[index] ? Colors.white : Colors.grey,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Text("Morning Session"),
//               SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300, width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("9:00 AM")),
//                   ),
//                   Spacer(),
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300,width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("2:00 PM")),
//                   ),
//                   SizedBox(width: 10,),
//                   CircleAvatar(
//                     backgroundColor: Colors.grey.shade200,
//                     radius: 15,
//                     child: Icon(Icons.delete,size: 20),
//                   )
//
//
//                 ],
//               ),
//               SizedBox(height: 10,),
//               Text("Afternoon Session"),
//               SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300, width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("2:00 PM")),
//                   ),
//                   Spacer(),
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300,width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("6:00 PM")),
//                   ),
//                   SizedBox(width: 10,),
//                   CircleAvatar(
//                     backgroundColor: Colors.grey.shade200,
//                     radius: 15,
//                     child: Icon(Icons.delete,size: 20),
//                   )
//                 ],
//               ),
//               SizedBox(height: 20,),
//
//               Text("Slot Duration*"),
//               SizedBox(height: 5,),
//               Container(
//                 width: double.maxFinite,
//                 height: MediaQuery.of(context).size.height*0.05,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   border: Border.all(color: Colors.grey.shade300),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 10, right: 10),
//                   child: Row(
//                     children: [
//                       Text("0"), Spacer(),
//                       VerticalDivider(),
//                       Text("mins",style: TextStyle(fontSize: 10),),
//                     ],
//                   ),
//                 ),
//               ),
//
//               SizedBox(height: 10,),
//
//               Text("Follow-Up Duration"),
//               SizedBox(height: 5,),
//               Container(
//                 width: double.maxFinite,
//                 height: MediaQuery.of(context).size.height*0.05,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   border: Border.all(color: Colors.grey.shade300),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 10, right: 10),
//                   child: Row(
//                     children: [
//                       Text("0"), Spacer(),
//                       VerticalDivider(),
//                       Text("days",style: TextStyle(fontSize: 10),),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//
//               Text("Follow-Up Duration"),
//               SizedBox(height: 5,),
//               Container(
//                 width: double.maxFinite,
//                 height: MediaQuery.of(context).size.height*0.05,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   border: Border.all(color: Colors.grey.shade300),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 10, right: 10),
//                   child: Row(
//                     children: [
//                       Text("0"), Spacer(),
//                       VerticalDivider(),
//                       Text("days",style: TextStyle(fontSize: 10),),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//
//               Text("Consultation Fee*"),
//               SizedBox(height: 5,),
//               Container(
//                 width: double.maxFinite,
//                 height: MediaQuery.of(context).size.height*0.05,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   border: Border.all(color: Colors.grey.shade300),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 10, right: 10),
//                   child: Row(
//                     children: [
//                       Text("\u{20B9}"),
//                       VerticalDivider(),
//                       // Text("days",style: TextStyle(fontSize: 10),),
//                     ],
//                   ),
//                 ),
//               ),
//
//
//
//
//               SizedBox(height: 90,),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class InPerson extends StatefulWidget {
//   const InPerson({super.key});
//
//   @override
//   State<InPerson> createState() => _InPersonState();
// }
//
// class _InPersonState extends State<InPerson> {
//   List<String> weekDays = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
//   List<Color> boxOneColors = [
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//   ];
//   List<bool> _textOneColor = [false, false, false, false, false, false, false];
//
//   List<Color> boxTwoColors = [
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//     Colors.grey.shade200,
//   ];
//   List<bool> _textTwoColor = [false, false, false, false, false, false, false];
//
//   void _changeTextOneColor(int index) {
//     setState(() {
//       _textOneColor[index] = !_textOneColor[index];
//     });
//   }
//
//   void _changeTextTwoColor(int index) {
//     setState(() {
//       _textTwoColor[index] = !_textTwoColor[index];
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Timings"),
//               SizedBox(height: 10,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: List.generate(
//                   7,
//                       (index) => GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         boxOneColors[index] = boxOneColors[index] == Colors.grey.shade200
//                             ?Color(0xFF01038A)
//                             : Colors.grey.shade200;
//                         _changeTextOneColor(index);
//                       });
//                     },
//                     child: Container(
//                       width: 30,
//                       height: 30,
//                       color: boxOneColors[index],
//                       child: Center(
//                         child: Text(
//                           weekDays[index],
//                           style: TextStyle(
//                             color: _textOneColor[index] ? Colors.white : Colors.grey,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Text("Morning Session"),
//               SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300, width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("10:00 AM")),
//                   ),
//                   Spacer(),
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300,width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("2:00 PM")),
//                   ),
//                   SizedBox(width: 10,),
//                   CircleAvatar(
//                     backgroundColor: Colors.grey.shade200,
//                     radius: 15,
//                     child: Icon(Icons.delete,size: 20),
//                   )
//
//
//                 ],
//               ),
//               SizedBox(height: 10,),
//               Text("Afternoon Session"),
//               SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300, width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("5:00 PM")),
//                   ),
//                   Spacer(),
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300,width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("7:00 PM")),
//                   ),
//                   SizedBox(width: 10,),
//                   CircleAvatar(
//                     backgroundColor: Colors.grey.shade200,
//                     radius: 15,
//                     child: Icon(Icons.delete,size: 20),
//                   )
//                 ],
//               ),
//               SizedBox(height: 10,),
//
//               Divider(),
//
//               SizedBox(height: 10,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Timings 2"),
//                   CircleAvatar(
//                     backgroundColor: Color(0xFF01038A),
//                     radius: 13,
//                     child: Icon(Icons.delete,size: 20),
//                   )
//                 ],
//               ),
//               SizedBox(height: 10,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: List.generate(
//                   7,
//                       (index) => GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         boxTwoColors[index] = boxTwoColors[index] == Colors.grey.shade200
//                             ? Color(0xFF01038A)
//                             : Colors.grey.shade200;
//                         _changeTextTwoColor(index);
//                       });
//                     },
//                     child: Container(
//                       width: 30,
//                       height: 30,
//                       color: boxTwoColors[index],
//                       child: Center(
//                         child: Text(
//                           weekDays[index],
//                           style: TextStyle(
//                             color: _textTwoColor[index] ? Colors.white : Colors.grey,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Text("Morning Session"),
//               SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300, width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("10:00 AM")),
//                   ),
//                   Spacer(),
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300,width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("2:00 PM")),
//                   ),
//                   SizedBox(width: 10,),
//                   CircleAvatar(
//                     backgroundColor: Colors.grey.shade200,
//                     radius: 15,
//                     child: Icon(Icons.delete,size: 20),
//                   )
//
//
//                 ],
//               ),
//               SizedBox(height: 10,),
//               Text("Afternoon Session"),
//               SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300, width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("5:00 PM")),
//                   ),
//                   Spacer(),
//                   Container(
//                     height: MediaQuery.of(context).size.height*0.05,
//                     width: MediaQuery.of(context).size.width*0.35,
//
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey.shade300,width: 1.5),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("6:00 PM")),
//                   ),
//                   SizedBox(width: 10,),
//                   CircleAvatar(
//                     backgroundColor: Colors.grey.shade200,
//                     radius: 15,
//                     child: Icon(Icons.delete,size: 20),
//                   )
//                 ],
//               ),
//               SizedBox(height: 20,),
//
//               Text("Slot Duration*"),
//               SizedBox(height: 5,),
//               Container(
//                 width: double.maxFinite,
//                 height: MediaQuery.of(context).size.height*0.05,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   border: Border.all(color: Colors.grey.shade300),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 10, right: 10),
//                   child: Row(
//                     children: [
//                       Text("15"), Spacer(),
//                       VerticalDivider(),
//                       Text("mins",style: TextStyle(fontSize: 10),),
//                     ],
//                   ),
//                 ),
//               ),
//
//
//               SizedBox(height: 90,),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
