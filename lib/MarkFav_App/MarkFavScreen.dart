import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarkFavScreen extends StatefulWidget {
  const MarkFavScreen({Key? key}) : super(key: key);

  @override
  State<MarkFavScreen> createState() => _MarkFavScreenState();
}

class _MarkFavScreenState extends State<MarkFavScreen> {
  List<String> fruitList = ['Orange' , 'Mango' , 'Bannana' , 'Apple'];
  List<String> tempArray=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mark Favourite App'),
      ),
      body:ListView.builder(
        itemCount: fruitList.length,
          itemBuilder: (context , index){
            return Card(
              child: ListTile(
                onTap: () {
                  // tempArray.add(fruitList[index].toString());
                  if (tempArray.contains(fruitList[index].toString())) {
                    tempArray.remove(fruitList[index].toString());
                  } else {
                    tempArray.add(fruitList[index].toString());
                  }
                setState(() {

                });
                  },


                title: Text(fruitList[index].toString()),
                trailing: Icon(

                    Icons.favorite,

                color: tempArray.contains(fruitList[index].toString())?Colors.red:Colors.black12
                ),
              ),
            );

          })
    );
  }
}
