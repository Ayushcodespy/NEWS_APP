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
      backgroundColor: AppColors.background,
//--------------------  Drawer  -------------------------------

      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
                                        controller.currentSelectedCategoryIndex
                                    ? AppColors.primaryButton
                                    : Colors.transparent)
                                .rounded
                                .make()
                          ],
                        )),
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
                    .size(4, 25)
                    .color(AppColors.primaryButton)
                    .rounded
                    .make(),
                10.widthBox,
                Text(
                  AppStrings.popularNews,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryText),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    AppStrings.viewAll,
                    style: TextStyle(color: AppColors.secondaryText),
                  ),
                ),
              ],
            ),
            10.heightBox,
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 20,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.white
                    ),
                  clipBehavior: Clip.hardEdge,
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                    "Hello developers this is Ayush creating a news app as project"),
                                10.heightBox,
                                VxBox(
                                  child: const Text(
                                    "Entertainment",
                                    style: TextStyle(color: AppColors.white),
                                  ),
                                )
                                    .padding(const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 6))
                                    .color(AppColors.icon)
                                    .roundedSM
                                    .make(),
                              ],
                            ),
                          ),
                          5.widthBox,
                          Expanded(
                              child: VxBox().black.size(80, 80).roundedSM.make())
                        ],
                      ),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.access_time,
                                  size: 14, color: AppColors.secondaryText),
                              5.widthBox,
                              const Text(
                                "20 April, 24",
                                style: TextStyle(
                                    fontSize: 12, color: AppColors.secondaryText),
                              ),
                            ],
                          ),
                          Row(
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
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
