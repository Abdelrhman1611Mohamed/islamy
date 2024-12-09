import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  Map<String, String> prayerTimes = {
    'Sunrise': '04:04 AM',
    'Dhuhr': '01:01 PM',
    'Asr': '04:38 PM',
    'Maghrib': '07:57 PM',
    'Isha': '09:12 PM',
  };

  bool isMuted = false;

  void _editPrayerTime(String prayer) {
    TextEditingController controller =
        TextEditingController(text: prayerTimes[prayer]);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit $prayer Time'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'Enter new time',
              hintText: 'e.g., 05:00 AM',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Cancel',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  prayerTimes[prayer] = controller.text;
                });
                Navigator.of(context).pop();
              },
              child: Text(
                'Save',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bgTime.png'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent, // Dark background
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/Logo.png'),
                // Pray Times Container
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary, // Golden color
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      // Date and Day at the top
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Left side (Date)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Date Container with background color
                              Container(
                                decoration: BoxDecoration(
                                   color: Color(0xFF856B3F),
                                   borderRadius: BorderRadius.circular(20),
                                ),// Set color here
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    _editPrayerTime('Sunrise');
                                  },
                                  child: Text(
                                    '16 Jul, 2024',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Right side (Hijri Date)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              // Hijri Date Container with background color
                              Container(
                                // Set color here
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                   color: Color(0xFF856B3F),
                                   borderRadius: BorderRadius.circular(20),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    _editPrayerTime('Sunrise');
                                  },
                                  child: Text(
                                    '09 Muh, 1446',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      // Pray Time Text
                      const Text(
                        'Pray Time',
                        style: TextStyle(
                          color: Color.fromARGB(132, 17, 17, 43),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Tuesday Text
                      GestureDetector(
                        onTap: () {
                          _editPrayerTime('Sunrise');
                        },
                        child: Text(
                          'Tuesday',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: prayerTimes.entries.map((entry) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: GestureDetector(
                                onTap: () => _editPrayerTime(entry.key),
                                child: Column(
                                  children: [
                                    Text(
                                      entry.key,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      entry.value,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(height: 10),
                      // Next Pray Time and Mute Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Next Pray - 02:32',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              isMuted ? Icons.volume_off : Icons.volume_up,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                isMuted = !isMuted;
                              });
                            },
                          ),
                        ],
                      ),
                     
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text('Azkar',
                      style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 185.w,
                        height: 259.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                            width: 2,
                                  
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/Illustration-1.png'),
                              Text('Evening Azkar',
                              style: Theme.of(context).textTheme.headlineMedium,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                       Container(
                        width: 185.w,
                        height: 259.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                            width: 2,
                                  
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/Illustration-9.png'),
                              Text('Morning Azkar',
                              style: Theme.of(context).textTheme.headlineMedium,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
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
