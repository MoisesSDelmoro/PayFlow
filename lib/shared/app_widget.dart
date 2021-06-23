import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login.dart';
import 'package:payflow/modules/splash/splash_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pay Flow',
        theme: ThemeData(primaryColor: AppColors.primary),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => SplashPage(),
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage(),
        });
  }
}

/* 
class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*
    return FutureBuilder(
        // Replace the 3 second delay with your initialization code:
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, AsyncSnapshot snapshot) {
          // Show splash screen while waiting for app resources to load:
          if (snapshot.connectionState == ConnectionState.waiting) {
            return MaterialApp(
                title: 'Pay Flow',
                theme: ThemeData(primaryColor: AppColors.primary),
                home: SplashPage());
          } else {
            // Loading is done, return the app:
*/
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: LoginPage(),
    );
    //  }
    //  });
  }
}
*/
