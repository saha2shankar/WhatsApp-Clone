import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/Screen/Home/home_screen.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();

  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 70),
          Center(
            child: UiHelper.CustomText(
              text: 'Profile info',
              height: 20,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          UiHelper.CustomText(
            text: 'Please enter your name and on optional',
            height: 14,
          ),
          UiHelper.CustomText(text: 'profile picture', height: 14),
          const SizedBox(height: 30),
          InkWell(
            onTap: () {
              _openGallery(context);
            },
            child:
                imageFile != null
                    ? CircleAvatar(
                      radius: 70,
                      backgroundImage: FileImage(imageFile!),
                    )
                    : CircleAvatar(
                      radius: 70,
                      backgroundColor: Color(0XFFD9D9D9),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type your name here',
                    hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A882)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF05A882)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A882)),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              SizedBox(width: 10),
              UiHelper.CustomImage(image: 'happy-face.png'),
            ],
          ),
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
          // Handle button press
        },
        text: 'Next',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openGallery(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 70,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  _pickImage(ImageSource.camera);
                },
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _pickImage(ImageSource.camera);
                      },
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        // color: Color(0XFF00A884),
                        // size: 25,
                        size: 25,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 5),

                    Text(
                      'Camera',
                      style: TextStyle(fontSize: 14, color: Color(0XFF5E5E5E)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 80),
              InkWell(
                onTap: () {
                  _pickImage(ImageSource.gallery);
                },
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _pickImage(ImageSource.gallery);
                      },
                      icon: Icon(
                        Icons.photo_library_outlined,
                        size: 25,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Gallery',
                      style: TextStyle(fontSize: 14, color: Color(0XFF5E5E5E)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );

    //mplement the logic to open the gallery and select an image
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final imageTemporary = File(photo.path);

      setState(() {
        imageFile = imageTemporary;
      });
    } catch (e) {
      print(e.toString());
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          backgroundColor: Color(0XFF00A884),
        ),
      );
    }
  }
}
