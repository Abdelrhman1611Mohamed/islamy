import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/screens/Home/qurandetilistext.dart';

class Quranditails extends StatelessWidget {
  final List<String> suraNames = [
    "الفاتحة", "البقرة", "آل عمران", "النساء", "المائدة",
    "الأنعام", "الأعراف", "الأنفال", "التوبة", "يونس",
    "هود", "يوسف", "إبراهيم", "الحجر", "النحل",
    "الإسراء", "الكهف", "مريم", "طه", "الأنبياء",
    "الحج", "المؤمنون", "الفرقان", "الشعراء", "النمل",
    "العنكبوت", "الروم", "لقمان", "السجدة", "الأحزاب",
    "ياسين", "الصافات", "فصلت", "الشورى", "الزخرف",
    "الدخان", "الجاثية", "الأحقاف", "محمد", "الفتح",
    "الحجرات", "ق", "الذاريات", "الطور", "الحديد",
    "المجادلة", "الملك", "القلم", "الحاقة", "المعارج",
    "نوح", "الجن", "المزمل", "المدثر", "القيامة",
    "الإنسان", "المرسلات", "النبأ", "النازعات", "عبس",
    "التكوير", "الإنفطار", "المطففين", "القدر", "البينة",
    "الزلزلة", "العاديات", "القارعة", "التكاثر", "الهمزة",
    "الفيل", "قريش", "الماعون", "الكوثر", "الكافرون",
    "النصر", "المسد", "الإخلاص", "الفلق", "الناس"
  ];

  final List<String> suraNamesEnglish = [
    "Al-Fatiha", "Al-Baqarah", "Aal-E-Imran", "An-Nisa", "Al-Ma’idah",
    "Al-An'am", "Al-A'raf", "Al-Anfal", "At-Tawbah", "Yunus",
    "Hud", "Yusuf", "Ibrahim", "Al-Hijr", "An-Nahl",
    "Al-Isra", "Al-Kahf", "Maryam", "Taha", "Al-Anbiya",
    "Al-Hajj", "Al-Mu’minun", "Al-Furqan", "Ash-Shu'ara", "An-Naml",
    "Al-Ankabut", "Ar-Rum", "Luqman", "As-Sajdah", "Al-Ahzab",
    "Ya-Sin", "As-Saffat", "Fussilat", "Ash-Shura", "Az-Zukhruf",
    "Ad-Dukhan", "Al-Jathiya", "Al-Ahqaf", "Muhammad", "Al-Fath",
    "Al-Hujurat", "Qaf", "Adh-Dhariyat", "At-Tur", "Al-Hadid",
    "Al-Mujadila", "Al-Mulk", "Al-Qalam", "Al-Haqqah", "Al-Ma'arij",
    "Nuh", "Al-Jinn", "Al-Muzzammil", "Al-Muddathir", "Al-Qiyama",
    "Al-Insan", "Al-Mursalat", "An-Naba", "An-Nazi'at", "Abasa",
    "At-Takwir", "Al-Infitar", "Al-Mutaffifin", "Al-Qadr", "Al-Bayyina",
    "Az-Zalzalah", "Al-Adiyat", "Al-Qari'ah", "At-Takathur", "Al-Humazah",
    "Al-Fil", "Quraish", "Al-Ma'un", "Al-Kawthar", "Al-Kafirun",
    "An-Nasr", "Al-Masad", "Al-Ikhlas", "Al-Falaq", "An-Nas"
  ];

  static const routeName = '/quran-detail';

  @override
  Widget build(BuildContext context) {
    // تحقق آمن من القيم
    final Object? args = ModalRoute.of(context)?.settings.arguments;

    final Map<String, dynamic> arguments =
        (args is Map<String, dynamic>) ? args : {};

    final String suraName = arguments['suraName'] ?? 'اسم السورة غير معروف';
    final String suraNameEnglish =
        arguments['suraNameEnglish'] ?? 'اسم السورة غير معروف';
    final String versesNumber = arguments['versesNumber']?.toString() ?? '0';
    final String suraNumber = arguments['suraNumber']?.toString() ?? '0';

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bghome.png'), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset('assets/images/Logo.png'),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60.h,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 4.sp,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/quranTexet.png',
                      width: 24.sp,
                      height: 24.sp,
                    ),
                    SizedBox(width: 20.sp),
                    Text(
                      suraName,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Qurandetilistext.routeName,
                    arguments: {
                      'suraName': suraName,
                      'suraNameEnglish': suraNameEnglish,
                    },
                  );
                },
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('assets/images/arabic-art-svgrepo-com 1.png'),
                        Positioned(
                          child: Text(
                            '$suraNumber',
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              backgroundColor: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.sp,
                    ),
                    Column(
                      children: [
                        Text(
                          suraNameEnglish,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          '$versesNumber verses',
                          style: Theme.of(context).textTheme.labelSmall,
                        )
                      ],
                    ),
                    Spacer(),
                    Text(
                      suraName,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
