import 'package:bnews/res/routes/route_name.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

SplashController();

@override
void onInit() {
  navigateScreen();
  super.onInit();
}

navigateScreen(){
  Future.delayed(const Duration(seconds: 2), (){
    Get.offNamed(RouteName.onboarding);          // use to Named in plase of offNamed
  }
  );
}

}