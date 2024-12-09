import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/screens/Home/Screens/radio/widget/card.dart';

class Recitersradio extends StatelessWidget {
  const Recitersradio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Cardd(
          title: 'Ibrahim Al-Akdar',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(
          height: 16.h,
        ),
        const Cardd(
          title: 'Akram Alalaqmi',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(
          height: 16.h,
        ),
        const Cardd(
          title: 'Majed Al-Enezi',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(
          height: 16.h,
        ),
        const Cardd(
          title: 'Malik shaibat Alhamed',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(
          height: 16.h,
        ),
        const Cardd(
          title: 'Radio Ibrahim Al-Akdar',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(
          height: 16.h,
        ),
        const Cardd(
          title: 'Radio Ibrahim Al-Akdar',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(
          height: 16.h,
        ),
        const Cardd(
          title: 'Radio Ibrahim Al-Akdar',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }
}
