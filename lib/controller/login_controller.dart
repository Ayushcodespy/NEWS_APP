import 'package:bnews/res/routes/route_name.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

LoginController();

navigateToSignup(){
  Get.toNamed(RouteName.signup);
}

onLoginPressed(){}

navigateAsGuest() {
  Get.offAllNamed(RouteName.home);
}
}