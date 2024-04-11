import 'package:bnews/controller/splash_controller.dart';
import 'package:bnews/res/consts/consts.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';


class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body: Center(child: Column(
      children: [
        const Spacer(),
        Image.asset(AppAssets.logo, width: 140,),
        const Spacer(),
        const Text(AppStrings.poweredBy,),
        20.heightBox,
      ],
    ),)
    );
  }
}