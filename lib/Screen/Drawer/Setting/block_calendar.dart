import 'package:flutter/material.dart';



class BlockCalendar extends StatelessWidget {

  const BlockCalendar({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            'BLOCK CALENDAR',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff044408),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildListItem('For a day'),
                SizedBox(
                  width: 72,
                ),
                buildListItem2(
                  'For a duration',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Which day would you like to block your calendar',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0x5b181717),
              ),
            ),
            // Text(
            //   'For',
            //   style: TextStyle(fontSize: 15, color: Colors.black),
            // ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Select a date',
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff09350b))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  suffixIcon: Icon(Icons.calendar_view_day_rounded)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Which of these would you like to block',
              style: TextStyle(
                fontSize: 15,
                color: Color(0x5b181717),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Center(
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 14,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Block the entire day',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              '       Reason (optional)',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0x31000000),
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Personal Leave',
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  suffixIcon: Icon(Icons.arrow_drop_down)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              // mainAxisAlignment: m,
              children: [
                buildListItem1('Block consult hours'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildListItem1('Block custom time'),
                // buildListItem('For a day'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildListItem('Online'),
                SizedBox(
                  width: 20,
                ),
                buildListItem('Physical'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(),
            child: Center(
              child: Container(
                height: 40,
                width: 210,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'BLOCK CALENDER',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          )),
    );
  }

  Widget buildListItem(String text) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          child: Center(
              child: const Icon(
                Icons.check,
                color: Colors.white,
                size: 14,
              )),
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildListItem1(String text) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
            color: Color(0x1a181717),
          ),
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0x82181717),
          ),
        ),
      ],
    );
  }

  Widget buildListItem2(String text) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
            // color: Color(0x1a181717),
          ),
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
              fontSize: 18,
              color: Color(0x3a181717),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}