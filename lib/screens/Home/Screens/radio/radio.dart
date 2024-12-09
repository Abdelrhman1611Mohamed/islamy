import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/screens/Home/Screens/radio/widget/catgryradio.dart';
import 'package:islamic/screens/Home/Screens/radio/widget/recitersradio.dart';

class Radioo extends StatefulWidget {
  const Radioo({super.key});

  @override
  _RadiooState createState() => _RadiooState();
}

class _RadiooState extends State<Radioo> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/silhouette-woman-reading-quran.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
          child: Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset('assets/images/Logo.png'),
                ),
              ),
              SizedBox(height: 10.h),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 45.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 2,
                  ),
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedIndex == 0
                                ? Theme.of(context).colorScheme.secondary
                                : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Radio',
                            style: TextStyle(
                              color: selectedIndex == 0
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedIndex == 1
                                ? Theme.of(context).colorScheme.secondary
                                : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Reciters',
                            style: TextStyle(
                              color: selectedIndex == 1
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: IndexedStack(
                  index: selectedIndex,
                  children: const [
                    SingleChildScrollView(child: Catgryradio()),
                    SingleChildScrollView(child: Recitersradio()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
