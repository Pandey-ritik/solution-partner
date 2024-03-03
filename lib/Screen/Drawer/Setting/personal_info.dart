import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:solution_parnter/Widget/blockButton.dart';

class personal_info extends StatefulWidget {
  const personal_info({super.key});

  @override
  State<personal_info> createState() => _personal_infoState();
}

class _personal_infoState extends State<personal_info> {
  TextEditingController name = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController mobile= TextEditingController();
  edit(){
    name.text = 'Saurbh';
    lastname.text = 'Bhaghel';
    email.text = 'Abc@gmail.com';
    mobile.text = '1234567890';
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    edit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal and account information'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 20,bottom: 5),
            child: Text('Name',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          TextFieldDate('Name',name,Icons.person),

          Padding(
            padding: const EdgeInsets.only(left: 22, right: 20,bottom: 5),
            child: Text('Last Name',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          TextFieldDate('Last Name',lastname,Icons.person),

          Padding(
            padding: const EdgeInsets.only(left: 22, right: 20,bottom: 5),
            child: Text('Email',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          TextFieldDate('Email',email,Icons.email),

          Padding(
            padding: const EdgeInsets.only(left: 22, right: 20,bottom: 5),
            child: Text('Mobile Number',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          TextFieldDate('Mobile Number',mobile,Icons.email),

          Padding(
            padding: const EdgeInsets.only(left: 22, right: 20,bottom: 5),
            child: blockButton(
                width:Get.width*0.85,
                widget: Text('Update',style: TextStyle(color: Colors.white),)
            ),
          )
        ],
      ),
    );
  }
  Widget TextFieldDate(String hint,TextEditingController controller,con){
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
      child: SizedBox(
        height: 50,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blueAccent)
              ),
              hintText: hint,
              suffixIcon: Icon(con),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              )
          ),
        ),
      ),
    );
  }
}



