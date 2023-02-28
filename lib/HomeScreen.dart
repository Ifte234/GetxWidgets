import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'SliderController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SliderController sliderController = Get.put(SliderController());

  // double opacity = 0.4 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreenApp'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Obx((){
            return Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.center,
              height: 200,
              width: 200,
              // child: ,
              color: Colors.red.withOpacity(sliderController.opacity.value)
            );
          }),





          // Container(
          //   padding: EdgeInsets.only(left: 20),
          //   alignment: Alignment.center,
          //   height: 200,
          //   width: 200,
          //   // child: ,
          // color: Colors.red.withOpacity(opacity),
          // ),
          Obx(() => Slider(value: sliderController.opacity.value, onChanged: (value){
            sliderController.setOpacity(value);
            // opacity =value;
            // setState(() {
            //
            // });
          }
          ),)
          
                  ],
      ),
    );
  }
}
