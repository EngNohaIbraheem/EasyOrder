
import 'package:flutter/material.dart';

import '../../../../core/styles/app_font.dart';
import '../../data/models/shortcut_model.dart';
import 'custom_shortcut_item.dart';

class CustomShrotCutSectionHomeScreen extends StatelessWidget {
  const CustomShrotCutSectionHomeScreen({
    super.key,
    required this.shortcutData,
  });

  final List<ShortcutModel> shortcutData;

  @override
  Widget build(BuildContext context) {
        Size screenSize = MediaQuery.sizeOf(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * .04,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular today',
            style: AppFont.getTitleSmallFont(
              context,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: screenSize.height * .02,
          ),
          SizedBox(
            height: screenSize.height * .14,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomShortcutItem(
                data: shortcutData[index],
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: screenSize.width * .04,
              ),
              itemCount: shortcutData.length,
            ),
          ),
        ],
      ),
    );
  }
}
