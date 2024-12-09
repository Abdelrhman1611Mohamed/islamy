import 'package:flutter/material.dart';
import 'package:islamic/screens/Home/Screens/Hadith/hadith.dart';
import 'package:islamic/screens/Home/Screens/Sebha/sebha.dart';
import 'package:islamic/screens/Home/Screens/radio/radio.dart';
import 'package:islamic/screens/Home/Screens/Time/time.dart';
import 'package:islamic/screens/Home/Widget/catgory.dart';
import 'package:islamic/screens/Home/Widget/quran.dart';
import 'package:islamic/screens/Home/Widget/textFiled.dart';

class HomeScreens extends StatefulWidget {
  static const routName = "HomeScreens";

  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  // Track selected index for Bottom Navigation
  int _selectedIndex = 0;

  // Handle bottom navigation item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of widgets corresponding to each bottom navigation item
  List<Widget> _widgets = [
    HomeContent(), // First widget (Quran content)
    Hadith(), // Second widget (Hadith)
    // Third widget (Radio)
    Sebha(),
    Radioo(), // Fourth widget (Sebha)
    Time(), // Fifth widget (Time)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex, // Change the widget based on the selected index
        children: _widgets,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context)
            .colorScheme
            .secondary, // Background color of the bar
        selectedItemColor: Colors.white, // Color for selected item text
        unselectedItemColor: Colors.black, // Color for unselected items
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Vector.png',
              width: 30,
              height: 30,
              color: _selectedIndex == 0
                  ? Colors.white
                  : Colors.black, // Change color based on selection
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/book-album-svgrepo-com 1.png',
              width: 30,
              height: 30,
              color: _selectedIndex == 1
                  ? Colors.white
                  : Colors.black, // Change color based on selection
            ),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/necklace-islam-svgrepo-com 1.png',
              width: 30,
              height: 30,
              color: _selectedIndex == 2
                  ? Colors.white
                  : Colors.black, // Change color based on selection
            ),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/radio-svgrepo-com 1.png',
              width: 30,
              height: 30,
              color: _selectedIndex == 3
                  ? Colors.white
                  : Colors.black, // Change color based on selection
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/sts.png',
              width: 30,
              height: 30,
              color: _selectedIndex == 4
                  ? Colors.white
                  : Colors.black, // Change color based on selection
            ),
            label: 'Time',
          ),
        ],
        type: BottomNavigationBarType.fixed, // For a modern look
      ),
    );
  }
}

// HomeContent widget - This is the content displayed for the "Home" tab
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bghome.png'), fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          // Using ListView to enable vertical scrolling
          children: [
            Image.asset('assets/images/Logo.png'),
            const Textfiledd(),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Most Recently ',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Horizontal scrolling for categories
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Catgory(
                    nameAr: 'الأنبياء',
                    nameEn: 'Al-Anbiya',
                    nameVer: '112 Verses',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Catgory(
                    nameAr: 'البقرة',
                    nameEn: 'Al-Baqarah',
                    nameVer: '7 Verses',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Catgory(
                    nameAr: 'آل عمران',
                    nameEn: 'Aal-E-Imran',
                    nameVer: '200 Verses',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Suras List',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Quran widget for vertical scrolling
            Quran(),
          ],
        ),
      ),
    );
  }
}
