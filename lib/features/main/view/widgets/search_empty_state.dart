import 'package:easyorder/core/styles/app_font.dart';
import 'package:flutter/material.dart';

import '../../../../core/manager/assets_manager.dart';
import '../../../shared/widgets/custom_Store_item.dart';
import 'custom_popular_search_item.dart';


class SearchEmptyState extends StatelessWidget {
  const SearchEmptyState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular searches',
          style: AppFont.getSubtitle1(context),
        ),
        SizedBox(
          height: screenSize.height * .02,
        ),
        Row(
          children: [
            CustomPopularSearchItem(title: 'chicken'),
            SizedBox(
              width: screenSize.width * .02,
            ),
            CustomPopularSearchItem(title: 'pizza'),
            SizedBox(
              width: screenSize.width * .02,
            ),
            CustomPopularSearchItem(title: 'burger'),
          ],
        ),
        SizedBox(
          height: screenSize.height * .015,
        ),
        Row(
          children: [
            CustomPopularSearchItem(title: 'mcdonalds'),
            SizedBox(
              width: screenSize.width * .02,
            ),
            CustomPopularSearchItem(title: 'dessert'),
            SizedBox(
              width: screenSize.width * .02,
            ),
            CustomPopularSearchItem(title: 'pasta'),
          ],
        ),
        SizedBox(
          height: screenSize.height * .02,
        ),
        Container(
          width: double.infinity,
          height: screenSize.height * .01,
          color: Colors.grey.withOpacity(.1),
        ),
        SizedBox(
          height: screenSize.height * .02,
        ),
        Text(
          'Featured restarants',
          style: AppFont.getSubtitle1(context),
        ),
        SizedBox(
          height: screenSize.height * .02,
        ),
        SizedBox(
          height: screenSize.height * .24,
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisSpacing: 15,
            childAspectRatio: .8 / 3,
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            children: List.generate(10, (i) {
              return InkWell(
                onTap: () {},
                child: CustomStoreItem(
                  name: 'zacks',
                  category: 'Burger, chicken',
                  image: ImageAssetsManager.bazzokaLogo,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
