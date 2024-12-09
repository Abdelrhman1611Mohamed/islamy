import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  _SebhaState createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double rotationAngle = 0.0;
  int count = 0;
  String mainText = 'سبحان الله';
  String headerText = 'سَبِّحِ اسْمَ رَبِّكَ الأعلى ';

  // List of phrases to display
  List<Map<String, String>> phrases = [
    {'mainText': 'سبحان الله', 'headerText': 'سَبِّحِ اسْمَ رَبِّكَ الأعلى '},
    {
      'mainText': 'الحمد لله',
      'headerText': 'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ'
    },
    {
      'mainText': 'الله أكبر',
      'headerText':
          'اللَّهُ أَكْبَرُ، لَا إِلٰهَ إِلَّا اللَّهُ، الْحَمْدُ لِلَّهِ عَلَىٰ نِعْمَتِهِ الَّتِي لَا تُحْصَىٰ.'
    },
    {
      'mainText': 'لا إله إلا الله',
      'headerText': 'لَا إِلٰهَ إِلَّا اللَّهُ، وَحْدَهُ لَا شَرِيكَ لَهُ.'
    },
    {
      'mainText': 'سبحان الله وبحمده',
      'headerText': 'سبحان الله وبحمده سبحان الله العظيم '
    },
    {'mainText': 'ستغفر الله', 'headerText': 'استغفر الله العظيم و اتوب اليه'},
    {
      'mainText': 'لا حول ولا قوه الا بالله العلي العظيم',
      'headerText': 'لا حول ولا قوه الا بالله العلي العظيم'
    },
    {
      'mainText': 'حسبي الله لا اله الا هو عليه توكلت وهو رب العرش العظيم',
      'headerText': 'حسبي الله لا اله الا هو عليه توكلت وهو رب العرش العظيم'
    },
    {
      'mainText':
          'رضيت بالله ربا و بالاسلام دينا و سيدنا محمد صلى الله عليه وسلم نبينا ورسولا ',
      'headerText':
          'رضيت بالله ربا و بالاسلام دينا و سيدنا محمد صلى الله عليه وسلم نبينا ورسولا '
    },
    {
      'mainText':
          'سبحان الله وبحمده عدد خلقه ورضا نفسه وزنة عرشه ومداد كلماته ',
      'headerText':
          'سبحان الله وبحمده عدد خلقه ورضا نفسه وزنة عرشه ومداد كلماته '
    },
    {
      'mainText': 'اعوذ بكلمات الله التمات من شر م خلق',
      'headerText': 'اعوذ بكلمات الله التمات من شر م خلق'
    },
    {
      'mainText': 'اللهم صل وسلم وبارك على سيدنا محمد',
      'headerText': 'اللهم صل وسلم وبارك على سيدنا محمد'
    },
    {
      'mainText': 'ا اله الا الله سبحانك اني كنت من الظالمين',
      'headerText': 'ا اله الا الله سبحانك اني كنت من الظالمين'
    },
    {
      'mainText': 'الله الله ربي ولا أشرك به شيئا',
      'headerText': 'الله الله ربي ولا أشرك به شيئا'
    },
    {
      'mainText': 'لا اله الا الله الحق المبين',
      'headerText': 'لا اله الا الله الحق المبين'
    },
    {
      'mainText': 'ربي انزلني منزلا مباركا وانت خير المنزلين',
      'headerText':'ربي انزلني منزلا مباركا وانت خير المنزلين'
    },
  ];

  // Function to handle the logic of changing the text
  void rotateImage() {
    setState(() {
      rotationAngle += 60; // Rotate by 60 degrees on each tap

      if (count < 100) {
        count++;
      } else {
        // Change text and reset count when it reaches 100
        int currentIndex =
            (phrases.indexWhere((e) => e['mainText'] == mainText) + 1) %
                phrases.length;
        mainText = phrases[currentIndex]['mainText']!;
        headerText = phrases[currentIndex]['headerText']!;
        count = 1; // Reset count to 1 after changing the text
      }
    });
  }

  // Function to split text into multiple lines if it exceeds 3 words
  String getWrappedText(String text) {
    List<String> words = text.split(' ');
    List<String> wrappedLines = [];

    for (int i = 0; i < words.length; i += 3) {
      wrappedLines.add(words
          .sublist(i, i + 3 > words.length ? words.length : i + 3)
          .join(' '));
    }

    return wrappedLines.join('\n');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/shbg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.4),
        body: SafeArea(
          child: GestureDetector(
            onTap: rotateImage, // Detect screen tap
            child: Container(
              width: 430,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset('assets/images/Logo.png'),
                      Text(
                        headerText,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      SizedBox(height: 20.h),
                      Stack(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/masskggr.png',
                                width: 80.sp,
                                height: 89.sp,
                              ),
                              // Use Stack to position the image and text correctly
                              Stack(
                                children: [
                                  // Rotating image
                                  AnimatedRotation(
                                    turns: rotationAngle / 360,
                                    duration: Duration(milliseconds: 300),
                                    child: Image.asset(
                                      'assets/images/SebhaBody 1.png',
                                      width: 379.sp,
                                      height: 381.sp,
                                    ),
                                  ),
                                  // Text in the center
                                  Positioned.fill(
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FittedBox(
                                            fit: BoxFit
                                                .scaleDown, // Adjusts text size to fit
                                            child: Text(
                                              getWrappedText(
                                                  mainText), // Use the wrapped text here
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge,
                                            ),
                                          ),
                                          Text(
                                            '$count',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 50.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
