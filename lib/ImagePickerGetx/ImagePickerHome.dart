import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ImagePickerController.dart';

class ImagePickerHome extends StatefulWidget {
  const ImagePickerHome({Key? key}) : super(key: key);

  @override
  State<ImagePickerHome> createState() => _ImagePickerHomeState();
}

class _ImagePickerHomeState extends State<ImagePickerHome> {
  ImagePickerController controller1 = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker using Getx'),
      ),
      body: Obx((){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child:CircleAvatar(
                  radius: 40,
                    backgroundImage: controller1.imagePath.isNotEmpty ?
                    FileImage(File(controller1.imagePath.toString())) :
                    null
                ) ,),
                Center(child: TextButton(onPressed: (){
                  controller1.getImage();
                }, child: Text('Pick Image')),)

              ],
            );
          }),


    );
  }
}
