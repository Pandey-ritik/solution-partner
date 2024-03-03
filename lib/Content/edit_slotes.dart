import 'package:flutter/material.dart';

class EditSlote extends StatelessWidget {
  const EditSlote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}



// import 'package:flutter/material.dart';
//
// class EditSlote extends StatefulWidget {
//   const EditSlote({super.key});
//
//   @override
//   State<EditSlote> createState() => _EditSloteState();
// }
//
// class _EditSloteState extends State<EditSlote> {
//   String selectedValue = 'Option 1'; // Default selected value
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(15),
//         child: Container(
//           height: double.infinity,
//           width: double.infinity,
//           color: Colors.indigo.shade50,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
//               const Divider(),
//               GestureDetector(
//                 onTap: (){},
//                 child: Container(
//                   height: 40,
//                   color: Colors.indigo.shade100,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Add Invoice",style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold),),
//                         Container(
//                           width: 100,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             color: Colors.orangeAccent,
//                           ),
//                           //color: Colors.orangeAccent,
//                           child: Row(
//                             children: [
//                               Icon(Icons.call),
//                               Text("Need Help"),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Container(
//                   height: 450,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.white54,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Case*"),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                           width: double.infinity,
//                           child: DropdownButton<String>(
//                             value: selectedValue,
//                             onChanged: (String? newValue) {
//                               setState(() {
//                                 selectedValue = newValue!;
//                               });
//                             },
//                             items: <String>[
//                               'Option 1',
//                               'Option 2',
//                               'Option 3',
//                               'Option 4'
//                             ].map<DropdownMenuItem<String>>(
//                                   (String value) {
//                                 return DropdownMenuItem<String>(
//                                   value: value,
//                                   child: Row(
//                                     children: [
//                                       Text(value),
//                                       SizedBox(width: 150), // Adjust the spacing here
//                                       //Icon(Icons.arrow_drop_down),
//                                     ],
//                                   ),
//                                 );
//                               },
//                             ).toList(),
//                           ),
//                         ),
//                         Text("Invoice Date"),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text("Jan 12,2024,11:44:38 PM"),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Container(
//                           // height: 300,
//                           // width: 300,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.grey.shade200,
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(10),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Item",
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 TextField(
//                                   decoration: InputDecoration(
//                                     //  labelText: '',
//                                     hintText: 'Enter Item',
//                                     border: UnderlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10.0),
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.grey[200],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Text(
//                                   "Description",
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 TextField(
//                                   decoration: InputDecoration(
//                                     hintText: 'Enter Description',
//                                     border: UnderlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10.0),
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.grey[200],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Text(
//                                   "Amount(Rs.)",
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 TextField(
//                                   decoration: InputDecoration(
//                                     hintText: '0',
//                                     border: UnderlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10.0),
//                                     ),
//                                     filled: true,
//                                     fillColor: Colors.grey[200],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//
//
//                       ],
//                     ),
//                   ),
//                 ),
//
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               GestureDetector(
//                 onTap: (){},
//                 child: Container(
//                   // height: 30,
//                   // width: 200,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.orangeAccent,
//                   ),
//                   child: Row(
//                     children: [
//                       Icon(Icons.add),
//                       Text("Add Another"),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 50,),
//               Container(
//                   margin: EdgeInsets.only(left: 50),
//                   width: 200,
//                   child: ElevatedButton(
//                       onPressed: () {
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor:
//                         Colors.orangeAccent,),
//                       child: Text("Submit",
//                           style: TextStyle(
//                             color: Colors.white,
//                           ))))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
