import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Hadith extends StatelessWidget {
  const Hadith({super.key});

  @override
  Widget build(BuildContext context) {
    // نصوص الأحاديث لكل شريحة
    List<String> hadithTexts = [
      'الحديث الأول',
      'الحديث الثاني',
      'الحديث الثالث',
      'الحديث الرابع',
      'الحديث الخامس',
    ];

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/vertical-shot-hassan-ii-mosque-casablanca-morocco.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.6),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Logo.png'),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: double.infinity,
                  viewportFraction: 0.8,
                ),
                items: hadithTexts.map((hadithText) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/Hadith Card.png'),
                              fit: BoxFit.cover),
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 20.h,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 30,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        hadithText,
                                        style: TextStyle(
                                          fontSize: 24.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'jant',
                                        ),
                                      ),
                                      Text(
                                        'Content',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'jant',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
