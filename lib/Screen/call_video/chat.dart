import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:solution_parnter/Content/color.dart';

class chatbox extends StatefulWidget {
  const chatbox({super.key});

  @override
  State<chatbox> createState() => _chatboxState();
}

class _chatboxState extends State<chatbox> {
  List<message> Message = [
    message(text: 'Hey', date: DateTime.now().subtract(Duration(minutes: 1)), issent: false),
    message(text: 'I am Rahul!', date: DateTime.now().subtract(Duration(minutes: 1)), issent: true),
    message(text: 'Welcome to SolutionKey', date: DateTime.now().subtract(Duration(minutes: 1)), issent: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(child: GroupedListView<message,DateTime>(
            padding: EdgeInsets.all(8),
            reverse: true,
            order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            floatingHeader: true,
            elements: Message,
            groupBy: (Message)=>DateTime(
              Message.date.year,
              Message.date.month,
              Message.date.day,
            ),
            groupHeaderBuilder: (message Message)=>SizedBox(
              height: 40,
              child: Center(
                child: Card(
                  color: appcolor.blueColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(DateFormat.yMMMd().format(Message.date),style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
            ),
            itemBuilder: (context,message Message)=>BubbleSpecialThree(
              text: "${Message.text}",
              textStyle: TextStyle(color: Message.issent?Colors.white:Colors.black),
              color: Message.issent?appcolor.blueColor
                  :Color(0xFFE8E8EE),
              isSender: Message.issent,
            ),
          )),
          MessageBar(
            onSend: (text){
              final mes = message(text: text, date: DateTime.now(), issent: true);
              setState(() {
                        Message.add(mes);
                      });
            },
          )



          // Container(
          //   color: Colors.grey.shade300,
          //   child: TextField(
          //     decoration: InputDecoration(
          //       contentPadding: EdgeInsets.all(12),
          //       hintText: 'Type your message here..'
          //     ),
          //     onSubmitted: (text){
          //       final mes = message(text: text, date: DateTime.now(), issent: true);
          //       setState(() {
          //         Message.add(mes);
          //       });
          //
          //     },
          //   ),
          // )
        ],
      ),
    );
  }
}
class message{
  final String text;
  final DateTime date;
  final bool issent;
  const message({
    required this.text,required this.date, required this.issent
});
}
