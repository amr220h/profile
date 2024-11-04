// ignore_for_file: file_names

import 'package:flutter/material.dart';


class Pomodoro extends StatefulWidget {
  const Pomodoro({super.key});

  @override
  State<Pomodoro> createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  bool isshowmore = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 255, 255, 255),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.white60,
        centerTitle: true,
        title: const Text(
          'Pomodoro',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width, // الحد الأدنى للعرض
              maxWidth: MediaQuery.of(context)
                  .size
                  .width, // الحد الأقصى للعرض، يمكن تغيير القيمة حسب حاجتك
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Simple and Efficient Interface:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'The app interface clearly displays the session time, with a circular timer showing the remaining time in each ',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    textAlign: TextAlign.start,
                  ),
                  const Center(
                    child: Text(
                      '________________________________',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/img/Screenshot_2024-11-02-22-54-34-84_66265cc097f80226af6acaf68319af95.jpg',
                        width: 150,
                      ),
                      const SizedBox(width: 25),
                      Image.asset(
                        'assets/img/Screenshot_2024-11-02-22-37-37-53_66265cc097f80226af6acaf68319af95.jpg',
                        width: 150,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'The timer starts with a focus session set to 25 minutes (or a custom duration), encouraging the user to stay focused during this period',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/img/Screenshot_2024-11-02-22-33-57-44_66265cc097f80226af6acaf68319af95.jpg',
                        width: 150,
                      ),
                      const SizedBox(width: 25),
                      // Image.asset(
                      //     'assets/img/WhatsApp Image 2024-11-01 at 14.09.15_2c3362c8.jpg',
                      //     width: 150),
                    ],
                  ),
                  const Center(
                    child: Text(
                      '________________________________',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    '''How the App Works:  
                    \n 1-When opening the app, the user sees the option to start a 25-minute focus session

2-The user can tap the Play button to start the focus session.

3-After starting the session, the button changes to a Pause button, allowing the user to pause the session if needed.

4-During the session, the circular timer shows the progress visually, with the color gradually decreasing as the session nears its end.

5-The user can also reset the timer back to the original time using the reset button''',
                    maxLines: isshowmore ? 3 : null,
                    overflow: TextOverflow.visible,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                   TextButton(
                  onPressed: () {
                    setState(() {
                      isshowmore = !isshowmore;
                    });
                  },
                  child: Text(
                    isshowmore ? ' Show More' : ' Show Less',
                  )),
                  const Text(
                    '________________________________',
                    style: TextStyle(color: Colors.black),
                  ),
                  // const SizedBox(height: 25),
                  // const Text(
                  //   'Detailed Information:\n  Learn more about each coffee type,\n including flavor notes, roast levels, and prices.',
                  //   style: TextStyle(color: Colors.black, fontSize: 16),
                  //   textAlign: TextAlign.justify,
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
