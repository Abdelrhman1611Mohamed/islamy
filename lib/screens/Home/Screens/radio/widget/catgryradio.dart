import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/screens/Home/Screens/radio/widget/card.dart';

class Catgryradio extends StatelessWidget {
  const Catgryradio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Cardd(
          title: 'Radio Ibrahim Al-Akdar',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(height: 16.h,),
      const  Cardd(
          title: 'Radio Al-Qaria Yassen',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(height: 16.h,),
       const Cardd(
          title: 'Radio Ahmed Al-trabulsi',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(height: 16.h,),
      const  Cardd(
          title: 'Radio Addokali Mohammad Alalim',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(height: 16.h,),
      const  Cardd(
          title: 'Radio Ibrahim Al-Akdar',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(height: 16.h,),
       const Cardd(
          title: 'Radio Ibrahim Al-Akdar',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(height: 16.h,),
       const Cardd(
          title: 'Radio Ibrahim Al-Akdar',
          imagePath: 'assets/images/Mask group.png',
        ),
        SizedBox(height: 16.h,),
      ],
    );
  }
}
