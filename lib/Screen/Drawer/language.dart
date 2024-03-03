import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;

  String groupValue = '1';
  TextEditingController searchController = TextEditingController();
  List<String> allLanguages = [
    'English',
    'हिन्दी',
    'ગુજરાતી', //gujrati  ///
    '𑘦𑘨𑘰𑘙𑘲', //marathi ///
    'ଓଡ଼ିଆ', //odia ///
    'नेपाली ', // nepali ///
    'संस्कृतम् ', //sanskrit///
    'Kurak', //kurak
    'অসমীয়া ', //assamese
    'বাংলা ', //bengali
    'बर’ ', //bodo
    'डोगरी ', //dogri
    'कॉशुर,', // kashmiri
    'ಕನ್ನಡ', //kannada ///
    'कोंकणी',//konkani
    'मैथिली', //maithili
    'മലയാളം',//malyalam
    'Meitei' , //manipuri
    'ਪੰਜਾਬੀ ', // punjabi ///
    'தமிழ் ',//tamil
    'తెలుగు ',//telugu
    'ᱥᱟᱱᱛᱟᱲᱤ',// santali
    'ਸਿੰਧੀ', //sindhi
    'اُردُو', //urdu
  ];
  List<String> displayedLanguages = [];

  @override
  void initState() {
    super.initState();
    displayedLanguages = List.from(allLanguages);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(0.4),
              child: TextField(
                controller: searchController,
                onChanged: onSearchTextChanged,
                decoration: const InputDecoration(
                  hintText: 'Search Languages...',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  childAspectRatio: 3.00,

                ),
                itemCount: displayedLanguages.length,
                itemBuilder: (context, index) {
                  return buildLanguageCard(
                    (index + 1).toString(),
                    displayedLanguages[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onSearchTextChanged(String query) {
    setState(() {
      displayedLanguages = allLanguages
          .where((language) =>
          language.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Widget buildLanguageCard(String value, String language) {
     return Card(
      child: InkWell(
        onTap: () {
          groupValue = value;
          setState(() {});
        },
        child:
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Radio(
                fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.blue, // Replace with your desired color
                  ),
                  value: value,
                  groupValue: groupValue,
                  onChanged: (val) {
                    groupValue = val.toString();
                    setState(() {});
                  },

                ),
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Text(
                  language,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),

        ),
      );
  }
}

void main() {
  runApp(const MaterialApp(
    home: LanguageScreen(),
  ));
}
