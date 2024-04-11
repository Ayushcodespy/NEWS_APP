import 'package:bnews/res/routes/route_name.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {

AuthenticationController();

  navigateToLogin(){
    Get.toNamed(RouteName.login);
  }
}