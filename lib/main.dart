import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/screens/Home/home_screens.dart';
import 'package:islamic/screens/Home/quranDitails.dart';
import 'package:islamic/screens/Home/qurandetilistext.dart';

import 'package:islamic/screens/splash_screen.dart';
import 'package:islamic/style/app_style.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const Islamic());
}

class Islamic extends StatelessWidget {
  const Islamic({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: AppStyle.lightTheme,
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          routes: {
            SplashScreen.routeName: (_) => SplashScreen(),
            HomeScreens.routName: (_) => HomeScreens(),
            Quranditails.routeName: (_) => Quranditails(),
            Qurandetilistext.routeName: (_) => Qurandetilistext(),
          },
          // initialRoute: HomeScreens.routName,
        );
      },
    );
  }
}
