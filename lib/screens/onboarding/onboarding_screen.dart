import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../style/app_color.dart';
import '../Home/home_screens.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              OnboardingScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
                position: offsetAnimation,
                child: FadeTransition(opacity: animation, child: child));
          },
        ),
      );
    });

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Text("Splash Screen", style: TextStyle(fontSize: 24))),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      "image": "assets/images/onboarding1.png",
      "title": "Welcome To Islamic App",
    },
    {
      "image": "assets/images/kabba.png",
      "title": "Welcome To Islamic",
      "description": "We Are Very Excited To Have You In Our Community",
    },
    {
      "image": "assets/images/welcome.png",
      "title": "Reading the Quran",
      "description": "Read, and your Lord is the Most Generous",
    },
    {
      "image": "assets/images/bearish.png",
      "title": "Bearish",
      "description": "Praise the name of your Lord, the Most High",
    },
    {
      "image": "assets/images/radio.png",
      "title": "Holy Quran Radio",
      "description":
          "You can listen to the Holy Quran Radio through the application for free and easily",
    },
  ];

  void _goToNextPage() {
    if (_currentIndex < _onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomeScreens()));
    }
  }

  void _goToPreviousPage() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPrimary,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                TweenAnimationBuilder(
                  duration: const Duration(milliseconds: 1200),
                  tween: Tween<double>(begin: 0.5, end: 1.0),
                  curve: Curves.easeInOut,
                  builder: (context, value, child) {
                    return Transform.scale(
                      scale: value,
                      child: Image.asset(
                        'assets/images/Mosque-01.png',
                        width: ScreenUtil().setWidth(291),
                        height: ScreenUtil().setHeight(151),
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
                Positioned(
                  top: ScreenUtil().setHeight(60),
                  child: TweenAnimationBuilder(
                    duration: const Duration(milliseconds: 1000),
                    tween:
                        Tween<Offset>(begin: Offset(0, -0.5), end: Offset.zero),
                    curve: Curves.easeInOut,
                    builder: (context, value, child) {
                      return SlideTransition(
                        position: AlwaysStoppedAnimation(value),
                        child: Image.asset(
                          'assets/images/Islamic.png',
                          width: ScreenUtil().setWidth(166),
                          height: ScreenUtil().setHeight(96),
                          fit: BoxFit.contain,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemCount: _onboardingData.length,
              itemBuilder: (context, index) {
                final data = _onboardingData[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        data["image"]!,
                        width: ScreenUtil().setWidth(398),
                        height: ScreenUtil().setHeight(415),
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        data["title"]!,
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(22),
                          color: AppColors.gold,
                        ),
                      ),
                      if (data["description"] != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            data["description"]!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(18),
                              color: AppColors.gold,
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _onboardingData.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      width: _currentIndex == index ? 12.w : 8.w,
                      height: _currentIndex == index ? 12.w : 8.w,
                      decoration: BoxDecoration(
                        color: _currentIndex == index
                            ? AppColors.gold
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (_currentIndex == 0)
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => HomeScreens()));
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: AppColors.gold,
                            fontSize: ScreenUtil().setSp(18),
                          ),
                        ),
                      )
                    else
                      GestureDetector(
                        onTap: _goToPreviousPage,
                        child: Text(
                          'Back',
                          style: TextStyle(
                            color: AppColors.gold,
                            fontSize: ScreenUtil().setSp(18),
                          ),
                        ),
                      ),
                    GestureDetector(
                      onTap: _goToNextPage,
                      child: Text(
                        _currentIndex == _onboardingData.length - 1
                            ? 'Start'
                            : 'Next',
                        style: TextStyle(
                          color: AppColors.gold,
                          fontSize: ScreenUtil().setSp(18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
