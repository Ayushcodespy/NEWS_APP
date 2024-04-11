import 'package:bnews/controller/authentication_controller.dart';
import 'package:bnews/res/consts/consts.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AuthenticationPage extends GetView<AuthenticationController> {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              AppAssets.logo,
              width: 140,
            ),
            10.heightBox,

//          --------  welcome to news wave   ---------

            Text(
              AppStrings.welcome,
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            10.heightBox,

//          -------   Sign in to continue   --------

            const Text(AppStrings.signInToContinue),
            const Spacer(),

//            -------   sign in with google   --------

            VxBox(
                    child: const Text(
              AppStrings.signInGoogle,
              style: TextStyle(color: Colors.white),
            ))
                .width(context.screenWidth - 20)
                .color(const Color(0xff438AFE))
                .padding(
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16))
                .rounded
                .alignment(Alignment.center)
                .make(),

            10.heightBox,

//                 Sign in with facebook
            VxBox(
                    child: const Text(
              AppStrings.signInFB,
              style: TextStyle(color: Colors.white),
            ))
                .width(context.screenWidth - 20)
                .color(const Color(0xff3F51B5))
                .padding(
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16))
                .rounded
                .alignment(Alignment.center)
                .make(),

            const Spacer(),

//          ----------   Continue with Email    --------

            
            TextButton(
              onPressed: () {
                controller.navigateToLogin();
              },
              child: const Text(AppStrings.continueWithEmail),
            ),

            10.heightBox,
            const Text(AppStrings.privacyPolicyTermsConditions,
                style: TextStyle(color: Colors.grey)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextButton(
              onPressed: () {},
              child: const Text(AppStrings.privacyPolicy, style: TextStyle(fontSize: 12),),
            ),

            const Text("and", style: TextStyle(fontSize: 12, color: Colors.grey),),

            TextButton(
              onPressed: () {},
              child: const Text(AppStrings.termsConditions, style: TextStyle(fontSize: 12),),
            ),


            ],)
          ],
        ),
      ),
    );
  }
}
