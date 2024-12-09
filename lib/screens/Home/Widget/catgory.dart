import 'package:flutter/material.dart';

class Catgory extends StatelessWidget {
  final String nameEn;
  final String nameAr;
  final String nameVer;
  const Catgory({required this.nameEn,required this.nameAr,required this.nameVer});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      width: 283,
      height: 150,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                 nameEn,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  nameAr,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                 nameVer,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Image.asset('assets/images/quranSura.png',
          width: 140,
          ),
        ],
      ),
    );
  }
}
