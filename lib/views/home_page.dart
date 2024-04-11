import 'package:bnews/controller/home_controller.dart';
import 'package:bnews/res/consts/consts.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var categoriesList = [
      AppStrings.explore,
      AppStrings.enternment,
      AppStrings.sports,
      AppStrings.politics,
      AppStrings.travel
    ];
    return Scaffold(
      backgroundColor: AppColors.white,
//--------------------  Drawer  -------------------------------

      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: AppColors.white,
                child: Row(
                  children: List.generate(
                      categoriesList.length,
                      (index) => Column(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  categoriesList[index].capitalized,
                                  style: TextStyle(
                                      color: index ==
                                              controller
                                                  .currentSelectedCategoryIndex
                                          ? AppColors.primaryButton
                                          : AppColors.secondaryText),
                                ),
                              ),
                              VxBox()
                                  .size(30, 5)
                                  .color(index ==
                                          controller
                                              .currentSelectedCategoryIndex
                                      ? AppColors.primaryButton
                                      : Colors.transparent)
                                  .rounded
                                  .make()
                            ],
                          )),
                ),
              ),
            ),
            10.heightBox,
            VxSwiper.builder(
                viewportFraction: 1.0,
                itemCount: 3,
                autoPlay: true,
                onPageChanged: (index) {
                  controller.changeSwiperIndex(index);
                },
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        color: Vx.randomPrimaryColor,
                      ),
                      Positioned(
                        top: 14,
                        left: 10,
                        child: VxBox(
                                child: const Text(
                          "Sport",
                          style: TextStyle(color: AppColors.white),
                        ))
                            .padding(const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6))
                            .color(AppColors.primaryButton)
                            .roundedSM
                            .make(),
                      ),
                      Positioned(
                        top: 14,
                        right: 10,
                        child: VxBox(
                                child: Row(
                          children: [
                            const Icon(
                              Icons.favorite,
                              color: AppColors.white,
                              size: 14,
                            ),
                            6.widthBox,
                            const Text(
                              "255",
                              style: TextStyle(
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ))
                            .padding(const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6))
                            .color(Colors.black26)
                            .roundedSM
                            .make(),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        right: 10,
                        child: Column(
                          children: [
                            Text(
                              "Our Efforts to Build the Internet We believe the Internet paves the way for people and communities to thrive."
                                  .allWordsCapitilize(),
                              style: const TextStyle(color: AppColors.white),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.access_time,
                                    size: 14, color: AppColors.white),
                                5.widthBox,
                                const Text(
                                  "20 April, 24",
                                  style: TextStyle(
                                      fontSize: 12, color: AppColors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ).box.roundedSM.clip(Clip.hardEdge).make();
                }),
            10.heightBox,
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => VxBox()
                        .size(
                            index == controller.currentSwiperIndex ? 20 : 5, 5)
                        .rounded
                        .color(index == controller.currentSwiperIndex
                            ? AppColors.sliderSelectedDark
                            : AppColors.sliderDot)
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            10.heightBox,
            Row(
              children: [
                VxBox()
                    .size(5, 20)
                    .color(AppColors.primaryButton)
                    .rounded
                    .make(),
                10.widthBox,
                Text(
                  AppStrings.popularNews.allWordsCapitilize(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: const Text(AppStrings.viewAll,
                        style: TextStyle(color: AppColors.primaryText)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
