import 'package:get/get.dart';

class HomeController extends GetxController {

HomeController();


final _currentSelectedCategoryIndex = 0.obs;
get currentSelectedCategoryIndex => _currentSelectedCategoryIndex.value;
set currentSelectedCategoryIndex(value) => _currentSelectedCategoryIndex.value = value;



final _currentSwiperIndex = 0.obs;
get currentSwiperIndex => _currentSwiperIndex.value;
set currentSwiperIndex(value) => _currentSwiperIndex.value = value;

changeSwiperIndex(int value){
  currentSwiperIndex = value;
}

}