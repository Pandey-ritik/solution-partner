import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution_parnter/Design/Responsive.dart';

class invoice extends StatefulWidget {
  const invoice({super.key});

  @override
  State<invoice> createState() => _invoiceState();
}

class _invoiceState extends State<invoice> {
  String selectedValue = 'Option 1';
  
  get addItemcontainer => null; // Default selected value

  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        title: Text('Invoice'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            color: Colors.white.withOpacity(0.8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ////////////////// Add invoice head ////////////////

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Add Invoice",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            //color: Colors.orangeAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.call,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                  Text(
                                    "Need Help",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'main'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                ////////////////// Add invoice head ////////////////

                const SizedBox(
                  height: 20,
                ),

                ////////////////// Case container //////////////////

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Case*"),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            child: DropdownButton<String>(
                              value: selectedValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              items: <String>[
                                'Option 1',
                                'Option 2',
                                'Option 3',
                                'Option 4',
                              ].map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(value),
                                        SizedBox(width: 200),
                                        // Adjust the spacing here
                                        //Icon(Icons.arrow_drop_down),
                                      ],
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                          const Text("Invoice Date"),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text("Jan 12,2024,11:44:38 PM"),
                          const SizedBox(
                            height: 20,
                          ),

                          ///////////////// add another item container ///////////////
                          Column(
                            children: addItemcontainer,
                          ),

                          ///////////////// add another item container ///////////////
                        ],
                      ),
                    ),
                  ),
                ),

                ///////////////// Case container /////////////////

                const SizedBox(
                  height: 20,
                ),

                ///////////////// Add another btn //////////////////

                GestureDetector(
                  onTap: () {
                    setState(() {
                      addItemcontainer.add(
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.withOpacity(0.1),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Invoice Details',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: Responsive.issmallscreen(
                                                    context)
                                                ? width / 24
                                                : width / 60,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            addItemcontainer
                                                .remove(addItemcontainer);
                                          },
                                          icon: Icon(
                                            CupertinoIcons.multiply,
                                            color: Colors.blue,
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Item',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize:
                                              Responsive.issmallscreen(context)
                                                  ? width / 26
                                                  : width / 60,
                                          fontWeight: FontWeight.w600)),
                                  TextField(
                                    decoration:
                                        InputDecoration(hintText: 'Enter Item'),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Description',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize:
                                              Responsive.issmallscreen(context)
                                                  ? width / 26
                                                  : width / 60,
                                          fontWeight: FontWeight.w600)),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Enter Description'),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Amount(Rs.)',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize:
                                              Responsive.issmallscreen(context)
                                                  ? width / 26
                                                  : width / 60,
                                          fontWeight: FontWeight.w600)),
                                  TextField(
                                    decoration: InputDecoration(hintText: '0'),
                                  )
                                ],
                              )),
                        ),
                      );
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text("Add Another",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Poppins')),
                        ],
                      ),
                    ),
                  ),
                ),

                ///////////////// Add another btn //////////////////

                const SizedBox(
                  height: 40,
                ),

                ///////////////////// Sumbit Button /////////////////////
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Second()));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          backgroundColor: Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                          child: Text('Update',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Responsive.issmallscreen(context)
                                      ? width / 21
                                      : width / 60,
                                  color: Colors.white,
                                  fontFamily: 'Poppins')),
                        )),
                  ),
                )

                ///////////////////// Sumbit Button /////////////////////
              ],
            ),
          ),
        ),
      ),
    );
  }
}
