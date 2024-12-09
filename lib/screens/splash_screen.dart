import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/screens/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  bool _isBackgroundVisible = false;
  bool _isLogoVisible = false;
  bool _isGlowVisible = false;
  bool _isObjectsVisible = false;
  bool _isIslamicVisible = false;
  bool _isShapesVisible = false;

  late final AnimationController _lightController;

  @override
  void initState() {
    super.initState();

    _lightController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _isBackgroundVisible = true;
      });
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLogoVisible = true;
      });
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isGlowVisible = true;
      });
    });

    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        _isObjectsVisible = true;
      });
    });

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _isIslamicVisible = true;
      });
    });

    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        _isShapesVisible = true;
      });
    });

    Future.delayed(const Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnboardingScreen()),
      );
    });
  }

  @override
  void dispose() {
    _lightController.dispose();
    super.dispose();
  }

  Widget _animatedShadow(Widget child) {
    return AnimatedBuilder(
      animation: _lightController,
      builder: (context, _) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(_lightController.value * 0.3),
                blurRadius: 20,
                spreadRadius: 5,
              ),
            ],
          ),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedOpacity(
            opacity: _isBackgroundVisible ? 1.0 : 0.0,
            duration: const Duration(seconds: 1),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 57.h,
            left: 0,
            right: 0,
            child: Center(
              child: AnimatedOpacity(
                opacity: _isLogoVisible ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                child: _animatedShadow(
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0.5, end: 1.0),
                    duration: const Duration(seconds: 1),
                    builder: (context, scale, child) {
                      return Transform.scale(
                        scale: scale,
                        child: child,
                      );
                    },
                    child: Image.asset(
                      'assets/images/Mosque-01.png',
                      width: 291.w,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 25.w,
            child: AnimatedOpacity(
              opacity: _isGlowVisible ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: _animatedShadow(
                Image.asset(
                  'assets/images/Glow.png',
                  width: 80.w,
                ),
              ),
            ),
          ),
          Positioned(
            top: 400.h,
            left: 0,
            right: 0,
            child: Center(
              child: AnimatedOpacity(
                opacity: _isObjectsVisible ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                child: _animatedShadow(
                  Image.asset(
                    'assets/images/OBJECTS1.png',
                    width: 173.w,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 550.h,
            left: 0,
            right: 0,
            child: Center(
              child: AnimatedOpacity(
                opacity: _isIslamicVisible ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                child: _animatedShadow(
                  Image.asset(
                    'assets/images/Islamic.png',
                    width: 173.w,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 220.h,
            left: 0,
            child: AnimatedOpacity(
              opacity: _isShapesVisible ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: _animatedShadow(
                Image.asset(
                  'assets/images/Shape-07.png',
                  width: 87.w,
                ),
              ),
            ),
          ),
          Positioned(
            top: 625.h,
            right: 0,
            child: AnimatedOpacity(
              opacity: _isShapesVisible ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: _animatedShadow(
                Image.asset(
                  'assets/images/Shape-04.png',
                  width: 87.w,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
