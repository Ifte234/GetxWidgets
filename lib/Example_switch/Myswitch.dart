import 'package:color_grading_switch/Example_switch/SwitchContoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Myswitch extends StatefulWidget {
  const Myswitch({Key? key}) : super(key: key);

  @override
  State<Myswitch> createState() => _MyswitchState();
}

class _MyswitchState extends State<Myswitch> {
  // bool notification=false;
  SwitchController switchController = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch using Getx and SetState'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text('Notifications'),


              Obx((){
                print('123');
                return Switch(
                    value:switchController.notification.value , onChanged: (value){
                      switchController.setNotification(value) ;

                });
              })

              // Switch(
              //     value: notification, onChanged: (value){
              //   notification=value;
              //   setState(() {
              //
              //   });
              //
              // })
            ],
          )

        ],
      ),
    );
  }
}
