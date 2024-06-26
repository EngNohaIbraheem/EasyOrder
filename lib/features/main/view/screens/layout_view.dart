import 'package:easyorder/features/main/view/screens/search_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/manager/assets_manager.dart';
import '../../../../core/styles/app_color.dart';
import 'account_screen.dart';
import 'home_screen.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    const AccountScreen(),
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.deepPurple,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            changeCurrentPage(value);
          },
          selectedItemColor: AppColor.primary,
          elevation: 10,
          currentIndex: currentPage,
          items: [
             BottomNavigationBarItem(
              activeIcon: Image.asset(
                IconAssetsManager.homeIcon,
                width: screenSize.width * .07,
                height: screenSize.width * .07,
                color: AppColor.primary,
              ),
              icon: Image.asset(
                IconAssetsManager.homeIcon,
                width: screenSize.width * .07,
                height: screenSize.width * .07,
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                IconAssetsManager.searchIcon,
                width: screenSize.width * .06,
                height: screenSize.width * .06,
                color: AppColor.primary,
              ),
              icon: Image.asset(
                IconAssetsManager.searchIcon,
                width: screenSize.width * .06,
                height: screenSize.width * .06,
                color: Colors.grey,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                IconAssetsManager.userIcon,
                width: screenSize.width * .06,
                height: screenSize.width * .06,
                color: AppColor.primary,
              ),
              icon: Image.asset(
                IconAssetsManager.userIcon,
                width: screenSize.width * .06,
                height: screenSize.width * .06,
                color: Colors.grey,
              ),
              label: 'Account',
            ),
          ],
        ),
        body: pages[currentPage],
      ),
    );
  }

  changeCurrentPage(int index) {
    currentPage = index;
    setState(() {});
  }
}
