import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/manager/route_manager.dart';
import 'core/styles/app_theme.dart';
import 'features/address/welcome_screen.dart';
import 'features/main/view/screens/home_screen.dart';
import 'features/main/view/screens/layout_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return MaterialApp(
      routes: routeManager,
      //  home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
    );
  }
}
