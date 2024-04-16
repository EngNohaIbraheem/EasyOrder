import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/manager/assets_manager.dart';
import '../../../../core/styles/app_color.dart';
import '../../data/models/category_model.dart';
import '../../data/models/shortcut_model.dart';
import '../widgets/custom__appbar_section_home.dart';
import '../widgets/custom_categories_section_home_screen.dart';
import '../widgets/custom_popular_section_home.dart';
import '../widgets/custom_shortcut_section_home.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categoriesData = [];
  List<ShortcutModel> shortcutData = [];
  List<String> bannersData = [];
  int selectedPageIndex = 0;
  @override
  void initState() {
    getBannersData();
    getShortCuts();
    getCategoriesData();
    super.initState();
  }

  void getBannersData() {
    bannersData = [
      ImageAssetsManager.banner4Image,
      ImageAssetsManager.banner3Image,
      ImageAssetsManager.banner2Image,
      ImageAssetsManager.banner1Image,
      ImageAssetsManager.banner5Image,
    ];
  }

  void getCategoriesData() {
    categoriesData = [
      CategoryModel(
        id: 1,
        name: 'Resturant',
        image: ImageAssetsManager.foodResturantImage,
      ),
      CategoryModel(
        id: 2,
        name: 'SuperMart',
        image: ImageAssetsManager.martCategoryImage,
      ),
      CategoryModel(
        id: 3,
        name: 'Groceries',
        image: ImageAssetsManager.groceriesCategoryImage,
      ),
      CategoryModel(
        id: 4,
        name: 'Health & care',
        image: ImageAssetsManager.healthwellnessCategoryImage,
      ),
    ];
  }

  void getShortCuts() {
    shortcutData = [
      ShortcutModel(
        id: 1,
        name: 'KFC',
          image: ImageAssetsManager.kfcCategoryImage,


      ),
      ShortcutModel(
        id: 2,
        name: 'Burger',
        image: IconAssetsManager.discountIcon,
      ),
      ShortcutModel(
        id: 4,
        name: 'checken',
        image: IconAssetsManager.givebackIcon,
      ),
      ShortcutModel(
        id: 5,
        name: 'Hardees',
        image: IconAssetsManager.starIcon,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColor.primaryLight,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBarSectionHomeScreen(),
            SizedBox(
              height: screenSize.height * .02,
            ),
            CustomCategoriesSectionHomeScreen(categoriesData: categoriesData),
            SizedBox(
              height: screenSize.height * .02,
            ),
            // CustomShrotCutSectionHomeScreen(shortcutData: shortcutData),
            // CustomCategoriesSectionHomeScreen(categoriesData: categoriesData),

            SizedBox(
              height: screenSize.height * .02,
            ),
            CarouselSlider(
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    selectedPageIndex = index;
                  });
                },
                autoPlay: true,
                height: screenSize.height * .22,
                viewportFraction: 1,
              ),
              items: bannersData.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * .04,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          image,
                          width: screenSize.width,
                          fit: BoxFit.fill,
                          height: screenSize.height * .22,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: screenSize.height * .007,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  bannersData.length,
                  (i) => AnimatedContainer(
                    duration: const Duration(
                      milliseconds: 350,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: selectedPageIndex == i
                          ? AppColor.primary
                          : Colors.grey.withOpacity(.3),
                      borderRadius: BorderRadius.circular(
                        180,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.width * .04,
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * .02,
            ),
            const CustomPopularSectionHomeScreen(),
            SizedBox(
              height: screenSize.height * .02,
            ),
          ],
        ),
      ),
    );
  }
}
