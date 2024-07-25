import 'package:get/get.dart';
import 'package:practise_concepts/models/product.dart';

class UserController extends GetxController{
  RxList<User> allUsers= <User>[].obs;


  @override
  void onInit(){
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() {
    var serverResponse=<User>[];
    allUsers.value= serverResponse;
  }

  void clear(){
    allUsers.clear();
}


  getupdatedvalue(){

  }


}