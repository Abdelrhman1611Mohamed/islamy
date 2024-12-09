import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Qurandetilistext extends StatelessWidget {
  static const String routeName = 'Qurandetilistext';

  const Qurandetilistext({super.key});

  @override
  Widget build(BuildContext context) {
    // Safely fetch arguments
    final Object? args = ModalRoute.of(context)?.settings.arguments;

    // Check if arguments are not null and are of type Map<String, dynamic>
    final Map<String, dynamic> arguments =
        (args is Map<String, dynamic>) ? args : {};

    final String suraName = arguments['suraName'] ?? 'اسم السورة غير معروف';
    final String suraNameEnglish =
        arguments['suraNameEnglish'] ?? 'اسم السورة غير معروف';

    return SafeArea(
      child: Container(
        decoration:const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage('assets/images/Soura Details Screen (1).png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: Text(
              suraNameEnglish,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          body: Container(
            padding: EdgeInsets.only(top: 40.h),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Text(
                  suraName,
                  style: Theme.of(context).textTheme.labelMedium,
                
                ),
                SizedBox(
                  height: 30.h,
                ),

                Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: SingleChildScrollView(
                    child: Text('Content',
                    style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
