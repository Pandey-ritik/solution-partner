import 'package:flutter/material.dart';
import 'package:solution_parnter/Content/color.dart';

class FeedbackComplaintScreen extends StatefulWidget {
  @override
  _FeedbackComplaintScreenState createState() => _FeedbackComplaintScreenState();
}

class _FeedbackComplaintScreenState extends State<FeedbackComplaintScreen> {
  String selectedOption = '';
  TextEditingController feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback or Raised an issue'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select an option:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [


                Radio<String>(
                  value: 'Feedback',
                  groupValue: selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                ),
                Text("Feedback"),
                SizedBox(width: 40,),

                Radio<String>(
                  value: 'Raised an issue',
                  groupValue: selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                ),
                Text("Raised an issue")

              ],
            ),

            SizedBox(height: 20),
            Text(
              'Write your ${selectedOption.toLowerCase() ?? 'feedback or complaint'}:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              controller: feedbackController,
              maxLines: 5,
              // enabled: selectedOption == 'Complaint',
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your ${selectedOption.toLowerCase()} here...',
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (selectedOption.isNotEmpty && feedbackController.text.isNotEmpty) {
                    // Handle the selected option and feedback/complaint text
                    print('Selected Option: $selectedOption');
                    print('Feedback/Complaint: ${feedbackController.text}');
                  } else {
                    // Inform the user to select an option and provide feedback/complaint
                    print('Please select an option and provide feedback/complaint');
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: appcolor.blueColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                child: Text('Submit',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


