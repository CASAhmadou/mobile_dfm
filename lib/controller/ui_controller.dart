//import 'package:get/get.dart';

import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:mobile_dfm/model/photos_model.dart';

class UiController extends GetxController{
  var selectedIndex = 0.obs;
  RxList<PhotosModel> photos = RxList();
  RxBool isLoading = true.obs;
  RxString orderBy = "commissions".obs;
  List<String> orders = [
    "commissions", "kourels", "poles", "evenements"
  ];

  getPhotos() async {
    isLoading.value = true;
  }

  orderFunc(String newVal){
    orderBy.value = newVal;
    //getPhotos();
  }

  @override
  void onInit(){
    //getPhotos();
    super.onInit();
  }
}