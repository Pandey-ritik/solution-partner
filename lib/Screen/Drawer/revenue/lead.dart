import 'package:flutter/material.dart';

class leads extends StatefulWidget {
  const leads({super.key});

  @override
  State<leads> createState() => _leadsState();
}

class _leadsState extends State<leads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You do not have any new leads at this moment.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
