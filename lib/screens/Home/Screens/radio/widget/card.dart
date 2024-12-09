import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cardd extends StatelessWidget {
  final String title;
  final String imagePath; 
  const Cardd({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imagePath), 
          fit: BoxFit.cover, 
        ),
      ),
      child: Container(
        width: 430.w,
        height: 133.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              textAlign: TextAlign.center,
              title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    size: 32.sp,
                    color:const Color(0xff202020),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    size: 32.sp,
                    color:const Color(0xff202020),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.volume_up,
                    size: 32.sp,
                    color:const Color(0xff202020),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
