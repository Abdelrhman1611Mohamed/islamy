import 'package:flutter/material.dart';
import 'package:islamic/screens/Home/quranDitails.dart';

class Quran extends StatelessWidget {
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

  final List<int> versesNumber = [
    7, 286, 200, 176, 120, 165, 206, 75, 129, 109,
    123, 111, 52, 99, 114, 111, 110, 98, 87, 112,
    78, 64, 77, 227, 55, 69, 34, 60, 73, 73,
    83, 54, 56, 53, 89, 51, 30, 19, 38, 29,
    19, 20, 19, 75, 31, 40, 43, 78, 89, 65,
    64, 53, 47, 41, 56, 20, 50, 38, 61, 36,
    60, 50, 100, 26, 48, 50, 47, 50, 50, 30,
    40, 50, 43, 42, 50, 38, 32, 31, 37, 114
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: List.generate(suraNames.length, (index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  // Pass the full surah data including name, english name, and verses count
                  Navigator.pushNamed(
                    context,
                    Quranditails.routeName,
                    arguments: {
                      'suraName': suraNames[index],
                      'suraNameEnglish': suraNamesEnglish[index],
                      'versesNumber': versesNumber[index],
                      'suraNumber': index + 1, 
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/arabic-art-svgrepo-com 1.png',
                          width: 50,
                          height: 50,
                        ),
                        Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          suraNamesEnglish[index],
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          '${versesNumber[index]} Verses',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      suraNames[index],
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              Divider(),
            ],
          );
        }),
      ),
    );
  }
}
