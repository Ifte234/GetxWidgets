import 'package:get/get.dart';
class FavouriteController extends GetxController{
  RxList<String> fruitList=['Orange' , 'Mango' , 'Bannana' , 'Apple'].obs;
  RxList tempList= [].obs;

  addToFavourite(String value){
    tempList.add(value);
print('added');
  }
  removeFromFavourite(String value){
    print('removed');
    tempList.remove(value);

  }
}