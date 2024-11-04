
import 'package:flutter/material.dart';
import 'package:profile/pages/home_page.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
               ),
              child:  Center(
                  child:Image.asset('assets/img/Profile portrait icon.jpeg'),
            )),
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            width: 200,
            child: Text(
              'Welcome to some of my information in life or what you are here for',
              style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.9), //color of shadow
                  spreadRadius: 7, //spread radius
                  blurRadius: 1, // blur radius
                  offset: const Offset(0, 2), // changes position of shadow
                )
              ]),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: Colors.white,
                  )))
        ],
      ),
    );
  }
}
