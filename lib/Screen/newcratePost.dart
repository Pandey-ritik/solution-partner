import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Widget/blockButton.dart';

class newPostCreate extends StatefulWidget {
  final detail;
  final imageurl;
  final String image;
  final String name;
  const newPostCreate(
      {super.key,
      required this.image,
      required this.name,
      this.detail,
      this.imageurl});

  @override
  State<newPostCreate> createState() => _newPostCreateState(imageurl, detail);
}

class _newPostCreateState extends State<newPostCreate> {
  TextEditingController data = TextEditingController();
  final String image;
  final String name;
  _newPostCreateState(this.image, this.name);
  edit() {
    data.text = name == '' ? '' : name.toString();
  }

  var postWrite = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    edit();
  }

  File? SelectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Post',
                style: TextStyle(color: appcolor.blueColor),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(widget.image),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '${widget.name}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: Get.width, // <-- TextField width
                height: 120, // <-- TextField height
                child: TextField(
                  cursorColor: Colors.blue,
                  controller: data,
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'Write something here...',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue))),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.filter),
                TextButton(
                    onPressed: () {
                      dialog(context, 1);
                    },
                    child: Text(
                      'Add Image',
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
            SelectedImage == null
                ? image == ''
                    ? Container(
                        height: 0,
                        width: 0,
                      )
                    : Container(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                          image.toString(),
                          fit: BoxFit.cover,
                        ),
                      )
                : Container(
                    height: 200,
                    width: 200,
                    child: Image.file(
                      File(
                        SelectedImage!.path,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
            SizedBox(
              height: 10,
            ),

            /////////////////////////////post button ///////////////////////
            ElevatedButton(
                onPressed: () async {
                  var content = data.text.toString();
                  var image = SelectedImage.toString();

                  var prefs = await SharedPreferences.getInstance();
                  prefs.setString("CONTENT", content);
                  prefs.setString("IMAGE", image);
                },
                child: Text('Post'))

            /////////////////////////////post button ///////////////////////
          ],
        ),
      ),
    );
  }

  Future dialog(context, int value) {
    return showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 80,
            color: Colors.blueAccent,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
                    children: [
                      IconButton(
                        onPressed: () async {
                          camera(value);
                        },
                        icon: Icon(
                          Icons.camera,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Camera',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () async {
                          gallery(value);
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.file,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'File',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future gallery(int value) async {
    //final dir = await path_provider.getTemporaryDirectory();
    // final targetPath = '${dir.absolute.path}/temp3.jpg';
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;
    // var result = await  FlutterImageCompress.compressAndGetFile(returnedImage.path, targetPath,quality: 20);

    setState(() {
      if (value == 1) {
        SelectedImage = File(returnedImage!.path);
      }
      Navigator.of(context).pop();
    });
  }

  Future camera(int value) async {
    // final dir = await path_provider.getTemporaryDirectory();
    // final targetPath = '${dir.absolute.path}/temp3.jpg';
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage == null) return;
    //var result = await  FlutterImageCompress.compressAndGetFile(returnedImage.path, targetPath,quality: 20);

    setState(() {
      if (value == 1) {
        SelectedImage = File(returnedImage!.path);
      }
      Navigator.of(context).pop();
    });
  }
}
