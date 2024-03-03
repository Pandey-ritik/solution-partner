import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:solution_parnter/Widget/datedropdown.dart';

import '../Widget/appointment_card.dart';
// import '../Widget/calender_week.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import '../Widget/constants.dart';
// import '../Widget/decoration_item.dart';
import '../Widget/dropdownsearch_widget.dart';

class OnlineSlot extends StatefulWidget {
  const OnlineSlot({super.key});

  @override
  State<OnlineSlot> createState() => _OnlineSlotState();
}

class _OnlineSlotState extends State<OnlineSlot> {
  DateTime _selectedDate = DateTime.now();
  var value = null;
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  DropDownValues? _selectedFilter;
  String? selectedMonth = 'February';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0 , left: 10.0),
          child: Column(
            children: [
                Card(
                    elevation: 2.0,
                  child: SizedBox(
                        height: 0.3 * height,
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            SizedBox(
                                width : 0.95 * width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18.0 , top: 10.0),
                                    child: DateDropdown(),
                                  ),
                                  Container(
                                    height: 0.05 * height,
                                    width: 0.2 * width,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        border:
                                        Border.all(color: Colors.black),
                                        borderRadius:
                                        BorderRadius.circular(5)),
                                    child: const Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.directions_walk),
                                        Text("Walk-IN")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                          ],
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          child: CalendarWeek(
                            controller: CalendarWeekController(),
                            height: 100,
                            showMonth: true,
                            dayShapeBorder: BoxShape.rectangle,
                            minDate: DateTime.now().add(
                              const Duration(days: -365),
                            ),
                            maxDate: DateTime.now().add(
                              const Duration(days: 365),
                            ),
                            onDatePressed: (DateTime datetime) {
                              // if (_selectedDate == null) {
                              //   setState(() {
                              //     _selectedDate = datetime;
                              //   });
                              // } else {
                              //   setState(() {
                              //     _selectedDate = null;
                              //   });
                              // }
                              // log(_selectedDate.toString());
                            },
                            onDateLongPressed: (DateTime datetime) {
                              // Do something
                            },
                            onWeekChanged: () {
                              // Do something
                            },
                            backgroundColor:
                            const Color.fromARGB(115, 208, 204, 204),
                            // dateBackgroundColor:
                            //     const Color.fromARGB(115, 208, 204, 204),
                            pressedDateBackgroundColor: Colors.greenAccent,
                            monthViewBuilder: (DateTime time) => Align(
                              alignment: FractionalOffset.center,
                              child: Container(
                                  margin: const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    DateFormat.yMMMM().format(time),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ),
                            decorations: [

                              DecorationItem(
                                  decorationAlignment:
                                  FractionalOffset.bottomRight,
                                  date: DateTime.now(),
                                  decoration: Icon(
                                    Icons.today,
                                    color: Colors.blue,
                                  )),
                              DecorationItem(
                                  date: DateTime.now().add(Duration(days: 4)),
                                  decoration: Text(
                                    '2',
                                    style: TextStyle(
                                      color: Colors.brown,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: DropDownSearchWidget(
                                  label: "Select Filter",
                                  selectedValue: _selectedFilter,
                                  items: filterList,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: DropDownSearchWidget(
                                  label: "Status",
                                  selectedValue: _selectedFilter,
                                  items: statusList,
                                ),
                              ),
                            ],
                          ),
                        )




                      ],
                    ),
                  ),


                ),
              Container(
                child: AppointmentCard(),
              )



            ],
          ),
        ),
      ),


    );
  }
}
