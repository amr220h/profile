import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:profile/model/thems.dart';
import 'package:profile/pages/project.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String email = 'amrkhaledsalama98@gmail.com';
  final String phoneNumber = '+201023497233';

  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch $email';
    }
  }

  Future<void> _launchWhatsApp() async {
    final Uri whatsappUri = Uri.parse("https://wa.me/$phoneNumber");
    if (await canLaunchUrl(whatsappUri)) {
      await launchUrl(whatsappUri);
    } else {
      throw 'Could not launch WhatsApp';
    }
  }

  Future<void> _launchPhoneCall() async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Mobile developer',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(color: Colors.white),
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 20,
                            spreadRadius: -5.0)
                      ]),
                      child: Image.asset(
                        'assets/img/WhatsApp Image 2024-11-01 at 20.22.45_ca32dbe3.jpg',
                        width: 150,
                      )),
                ),
                Column(
                  children: [
                    const Row(
                      
                      children: [
                        Icon(Icons.person,color: Colors.white,),SizedBox(width: 10,),
                        Text('Name:\n  Amr Khaled Salama',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    TextButton(
                      onPressed: _launchEmail,
                      child: const Row(
                        children: [
                          Icon(Icons.email,color: Colors.white,),
                          SizedBox(width: 10,),
                          Text('Email:\namrkhaledsalama98\n@gmail.com',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: _launchWhatsApp,
                      child: const Row(
                        children: [
                          Icon(Icons.chat,color: Colors.white,size: 20,),
                          SizedBox(width: 10,),
                          Text('WhatsApp:\n+201023497233',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: _launchPhoneCall,
                      child: const Row(
                        children: [
                          Icon(Icons.phone,color: Colors.white,size: 20,),
                          SizedBox(width: 10,),
                          Text('Phone:\n+201023497233',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    const Row(children: [
                       Icon(Icons.location_on,color: Colors.white,),
                      SizedBox(height: 10,),
                      Text('Egypt,  Alexandria',style: TextStyle(color: Colors.white),)
                    ],)
                  ],
                )
              ],
            ),
            const Text(
              '________________________________',
              style: TextStyle(color: TExt),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                width: 100,
                decoration: BoxDecoration(
                    color: TExt, borderRadius: BorderRadius.circular(14)),
                child: const Center(
                    child: Row(
                      children: [
                        Icon(Icons.info,color: Colors.black,size: 20,),
                         SizedBox(width: 10,),
                        Text('info',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ],
                    ))),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '''My name is Amr Khaled, and I am a mobile application developer specializing in Flutter. I have experience in building high-quality mobile apps that run on both iOS and Android platforms. My passion lies in delivering innovative and effective software solutions that make users' lives easier. I love exploring new technologies and continuously improving my skills. I thrive in dynamic teams focused on creating the best user experience. I believe that hard work and effective communication are the keys to success, and I always strive to be the person everyone prefers to work with for delivering top-quality results with commitment.''',
                style: TextStyle(color: TExt, fontWeight: FontWeight.w300),
              ),
            ),
            const Text(
              '________________________________',
              style: TextStyle(color: TExt),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                width: 150,
                decoration: BoxDecoration(
                    color: TExt, borderRadius: BorderRadius.circular(14)),
                child: const Center(
                    child: Row(
                      children: [
                        Icon(Icons.work_outline_outlined,color: Colors.black,size: 20,),
                        SizedBox(width: 10,),
                        Text('Experience',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.bold)),
                      ],
                    ))),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Freelance Flutter developer',
              style: TextStyle(color: TExt, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'I worked as a freelance mobile app developer using Flutter. Throughout my career, I developed numerous successful applications for both Android and iOS platforms. I was known for my ability to turn ideas into practical and user-friendly apps, making me highly sought after by many startups. Thanks to my skills in Flutter, I was able to deliver innovative and quick solutions to my clients, helping them achieve their goals efficiently and effectively.',
                style: TextStyle(color: TExt, fontWeight: FontWeight.w300),
              ),
            ),
            const Text(
              '________________________________',
              style: TextStyle(color: TExt),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
                width: 150,
                decoration: BoxDecoration(
                    color: TExt, borderRadius: BorderRadius.circular(14)),
                child: const Center(
                    child: Row(
                      children: [
                        Icon(Icons.assignment,color: Colors.black,size: 20,),
                        SizedBox(width: 10,),
                        Text('PROJECT',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.bold)),
                      ],
                    ))),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 300, // يمكنك تعديل هذا الارتفاع حسب حاجتك
              child: Container(
                  color: Colors.white,
                  child: const Project()), // استدعاء Project
            ),
            const Text(
              '________________________________',
              style: TextStyle(color: TExt),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
                width: 140,
                decoration: BoxDecoration(
                    color: TExt, borderRadius: BorderRadius.circular(14)),
                child: const Center(
                    child: Row(
                      children: [
                        Icon(Icons.handyman_outlined,color: Colors.black,size: 20,),
                        SizedBox(width: 20,),
                        Center(
                          child: Text('SKILLS',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ))),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '- Application Design',
                            style: TextStyle(color: TExt),
                          ),
                          Text(
                            '- Problem-solving',
                            style: TextStyle(color: TExt),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '- Coding',
                            style: TextStyle(color: TExt),
                          ),
                          Text(
                            '- Building applications',
                            style: TextStyle(color: TExt),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '- Flutter development ',
                            style: TextStyle(color: TExt),
                          ),
                          Text(
                            '- Time Management',
                            style: TextStyle(color: TExt),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '- Communication Skill ',
                            style: TextStyle(color: TExt),
                          ),
                          Text(
                            '- Application developer',
                            style: TextStyle(color: TExt),
                          ),
                        ],
                      ),
                      const Text(
                        '________________________________',
                        style: TextStyle(color: TExt),
                      ),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: TExt, borderRadius: BorderRadius.circular(14)),
                        child: const Center(
                            child: Row(
                              children: [
                                Icon(Icons.book_outlined,color: Colors.black,size: 20,),
                                SizedBox(width: 10,),
                                Text('Education',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ))),
                      const SizedBox(height: 25,),
                      const Text(
                        '- College grade:\nI am now in the second year of university',
                        style: TextStyle(color: Colors.white))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
