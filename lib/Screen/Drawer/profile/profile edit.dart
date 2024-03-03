import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Widget/blockButton.dart';

class profileEdit extends StatefulWidget {
  final profileimage;
  final backgroundImage;
  final name;
  final profession;
  final lastName;
  final qualificaion;
  final area;
  final about;
  const profileEdit({super.key, this.profileimage, this.backgroundImage, this.name, this.profession, this.lastName, this.qualificaion, this.area, this.about});

  @override
  State<profileEdit> createState() => _profileEditState();
}

class _profileEditState extends State<profileEdit> {
  File?SelectedImage;
  File?SelectedImage1;
  List<String> values = ['5 Min', '10 Min', '15 Min', '30 Min', '60 Min'];
  Future dialog(context,int value ){
    return showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 80,
            color:Colors.blueAccent,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
                    children: [
                      IconButton(onPressed: ()async{
                        camera(value);
                      }, icon: Icon(Icons.camera,color: Colors.white,),
                      ),
                      Text('Camera',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  SizedBox(width: 40,),
                  Column(
                    children: [
                      IconButton(onPressed: ()async{
                        gallery(value);
                      }, icon: FaIcon(FontAwesomeIcons.file,color: Colors.white,),
                      ),
                      Text('File',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
  Future gallery(int value)async{
    //final dir = await path_provider.getTemporaryDirectory();
    // final targetPath = '${dir.absolute.path}/temp3.jpg';
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

    if(returnedImage == null)return;
    // var result = await  FlutterImageCompress.compressAndGetFile(returnedImage.path, targetPath,quality: 20);

    setState(() {
      if(value ==1){
        SelectedImage= File(returnedImage!.path);
      }else if(value ==2){
        SelectedImage1= File(returnedImage!.path);
      }
      Navigator.of(context).pop();
    });
  }
  Future camera(int value)async{
    // final dir = await path_provider.getTemporaryDirectory();
    // final targetPath = '${dir.absolute.path}/temp3.jpg';
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.camera);

    if(returnedImage == null)return;
    //var result = await  FlutterImageCompress.compressAndGetFile(returnedImage.path, targetPath,quality: 20);

    setState(() {
      if(value ==1){
        SelectedImage= File(returnedImage!.path);
      }else if(value ==2){
        SelectedImage1= File(returnedImage!.path);
      }
      Navigator.of(context).pop();
    });
  }
  TextEditingController name = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController profession = TextEditingController();
  TextEditingController qualification= TextEditingController();
  TextEditingController dsignation= TextEditingController();
  TextEditingController area= TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController about= TextEditingController();
  TextEditingController experience= TextEditingController();
  TextEditingController currentJob= TextEditingController();
  TextEditingController audio= TextEditingController();
  TextEditingController video= TextEditingController();
  TextEditingController chat= TextEditingController();
  TextEditingController aadhar= TextEditingController();
  TextEditingController pan= TextEditingController();
   funct(){
    name.text = widget.name;
    currentJob.text = widget.profession;
    area.text = widget.area;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    funct();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit'),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(height: Get.height* 0.28,
              child: Stack(
                children: [
                  InkWell(
                    onTap:(){
                      dialog(context, 1);
                    },
                    child: Container(
                      height: Get.height*0.2,
                      width: Get.width,
                      child: SelectedImage ==null?Image.asset('${widget.backgroundImage}',fit: BoxFit.cover,):Image.file(File(SelectedImage!.path)),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: Get.width*0.3,
                    child: Center(
                      child: Stack(children: [
                         InkWell(
                           onTap: (){
                             dialog(context, 2);
                           },
                           child: CircleAvatar(
                            radius: 60,
                             backgroundImage: SelectedImage1!=null?FileImage(SelectedImage1!):null,
                             child: ClipOval(child:SelectedImage1==null? Image.asset('${widget.profileimage}'):null),
                             ),
                         ),
                          // Positioned(
                          //     left: Get.width*0.23,
                          //     top: Get.height* 0.1,
                          //     child: Icon(Icons.camera_alt,color: Colors.white,))
                         ],
                      ),
                    ),
                  )
                  // Container(
                ],
              ),
            ),
            TextFieldDate('Name',name,Icons.person,TextInputType.name,null),
            TextFieldDate('Last Name',lastname, Icons.person,TextInputType.name,null),
            TextFieldDate('Highest Qualification',qualification,Icons.rotate_90_degrees_ccw,TextInputType.name,null),
            TextFieldDate('Designation',dsignation,Icons.design_services,TextInputType.name,null),
            TextFieldDate('Area of Interest',area,Icons.location_on,TextInputType.name,null),
            SizedBox(
                height: Get.height*0.1,
                child: TextFieldDate('Whatsapp Number',mobile,Icons.phone,TextInputType.phone,10)),
            TextFieldDate('Email',email,Icons.email,TextInputType.name,null),
            TextFieldDate('Experience',experience,Icons.person,TextInputType.name,null),
            TextFieldDate('Current job',currentJob,FontAwesomeIcons.joget,TextInputType.name,null),
            TextFieldDate('Charges per min for Audio call',audio,Icons.currency_rupee,TextInputType.name,null),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  values.length,
                      (index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child:InkWell(
                        onTap: (){
                          setState(() {
                            var value = values[index].split(' ');
                            audio.text = value[0];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: appcolor.greenColor,
                              border: Border.all(color: Colors.black)
                          ),
                          height: 40,
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('${values[index]}',style: TextStyle(color: Colors.white),),
                          )),
                        ),
                      )

                    // TappableContainer(
                    //   value: values[index],
                    //   onTap: (newValue) {
                    //     chat.text = newValue;
                    //   },
                    //   color: Colors.green,
                    //   //color: _getColorByIndex(index),
                    // ),
                  ),
                ),
              ),
            ),
            TextFieldDate('Charges per min for Video call',video,Icons.currency_rupee,TextInputType.name,null),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  values.length,
                      (index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child:InkWell(
                        onTap: (){
                          setState(() {
                            var value = values[index].split(' ');
                            video.text = value[0];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: appcolor.greenColor,
                              border: Border.all(color: Colors.black)
                          ),
                          height: 40,
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('${values[index]}',style: TextStyle(color: Colors.white),),
                          )),
                        ),
                      )

                    // TappableContainer(
                    //   value: values[index],
                    //   onTap: (newValue) {
                    //     chat.text = newValue;
                    //   },
                    //   color: Colors.green,
                    //   //color: _getColorByIndex(index),
                    // ),
                  ),
                ),
              ),
            ),
            TextFieldDate('Charges per min for Chat per',chat,Icons.currency_rupee,TextInputType.name,null),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  values.length,
                      (index) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child:InkWell(
                      onTap: (){
                        setState(() {
                          var value = values[index].split(' ');
                          chat.text = value[0];
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: appcolor.greenColor,
                          border: Border.all(color: Colors.black)
                        ),
                        height: 40,
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('${values[index]}',style: TextStyle(color: Colors.white),),
                        )),
                      ),
                    )
                        // TappableContainer(
                    //   value: values[index],
                    //   onTap: (newValue) {
                    //     chat.text = newValue;
                    //   },
                    //   color: Colors.green,
                    //   //color: _getColorByIndex(index),
                    // ),
                  ),
                ),
              ),
            ),
            SizedBox(
                height: Get.height*0.1,
                child: TextFieldDate('Aadhar Number',aadhar,Icons.document_scanner_sharp,TextInputType.phone,12)),
            TextFieldDate('Pan card',pan,Icons.document_scanner_sharp,TextInputType.name,null),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: Get.width *0.86, // <-- TextField width
                height: 120, // <-- TextField height
                child: TextField(
                  controller: about,
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(filled: true, hintText: 'About you',)),
              ),
            ),
            blockButton(widget: Text('Update',style: TextStyle(color: Colors.white),),
            callback: (){},
              width: Get.width*0.85
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
  Widget TextFieldDate(String hint,TextEditingController controller,con,keyboad,max){
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
      child: SizedBox(
        height: 50,
        child: TextField(
          maxLength: max,
          keyboardType: keyboad,
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

