import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'FavouriteController.dart';

class MarkFavScreen extends StatefulWidget {
  const MarkFavScreen({Key? key}) : super(key: key);

  @override
  State<MarkFavScreen> createState() => _MarkFavScreenState();
}

class _MarkFavScreenState extends State<MarkFavScreen> {
  FavouriteController controller = Get.put(FavouriteController());
  // List<String> fruitList = ['Orange' , 'Mango' , 'Bannana' , 'Apple'];
  // List<String> tempArray=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mark Favourite App'),
      ),
      body:ListView.builder(
        itemCount: controller.fruitList.length,
        // itemCount: fruitLis.length,
          itemBuilder: (context , index){
            return Card(
              child: ListTile(

                onTap: () {

                  if(controller.tempList.contains(controller.fruitList[index].toString())){
                    controller.removeFromFavourite(controller.fruitList[index].toString());
                  }else{
                    controller.addToFavourite(controller.fruitList[index].toString());
                  }

                  },

                  // Below Code was used for setState
                /*  if (tempArray.contains(fruitList[index].toString())) {
                    tempArray.remove(fruitList[index].toString());
                  } else {
                    tempArray.add(fruitList[index].toString());
                  }
                setState(() {

                });
                  },

                */

                title: Text(controller.fruitList[index].toString()),
                trailing: Obx(() {
                  return Icon(

                    Icons.favorite,
                    color: controller.tempList.contains(controller.fruitList[index].toString()) ? Colors.red :
                    Colors.black12,
// Below code used for setState Method
// color: tempArray.contains(fruitList[index].toString())?Colors.red:Colors.black12
                  );
                })

              ),
            );

          })
    );
  }
}
