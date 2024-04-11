import 'package:bnews/res/consts/consts.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controller/onboarding_controller.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var titles = [
      AppStrings.onboardingTitle0,
      AppStrings.onboardingTitle1,
      AppStrings.onboardingTitle2
    ];
    var desc = [
      AppStrings.onboardingDesc0,
      AppStrings.onboardingDesc1,
      AppStrings.onboardingDesc2
    ];

    return Scaffold(
      // appBar: AppBar(title: const Text('OnboardingPage')),
      body: PageView.builder(
        controller: controller.pageController,
        itemCount: 3,
        onPageChanged: (value) => controller.changeIndex(value),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                // flex: 2,
                child: Image.asset(
                  "${AppAssets.onboarding}$index.png",
                  // width: 300,
                ),
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      titles[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    10.heightBox,
                    VxBox()
                        .size(100, 5)
                        .color(AppColors.primaryButton)
                        .rounded
                        .make(),
                    30.heightBox,
                    Text(
                      desc[index],
                      style: const TextStyle(),
                    ),
                  ],
                ),
              ))
            ],
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: TextButton.styleFrom(),
                onPressed: () {
                  controller.onContinueOrSkipPressed();
                },
                child: Text(AppStrings.skip,
                    style: const TextStyle(color: AppColors.secondaryText))),
            Obx(
              () => Row(
                children: List.generate(
                    3,
                    (index) => VxBox()
                        .size(index == controller.currentIndex ? 20 : 5, 5)
                        .rounded
                        .color(index == controller.currentIndex
                            ? AppColors.primaryButton
                            : AppColors.sliderDot)
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            Obx(
              () => controller.currentIndex < 2
              ? IconButton(
                onPressed: () {
                  controller.changePage(controller.currentIndex);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.secondaryButton,
                ))
              : TextButton(
                  onPressed: (){
                    controller.onContinueOrSkipPressed();
                  },
                  child: Text(
                    AppStrings.continueText,
                    style: const TextStyle(color: AppColors.secondaryButton)
                    )),
            )
          ],
        ),
      ),
    );
  }
}
