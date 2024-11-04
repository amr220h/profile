import 'package:flutter/material.dart';
import 'package:profile/pages/Pomodoro_app.dart';
import 'package:profile/pages/coffe_shop.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      primary: false,
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 5, // عدد العناصر في الشبكة
      itemBuilder: (BuildContext context, int index) {
        return _buildItem(context, index);
      },
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CoffeeShop(),
              ),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Pomodoro(),
              ),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CoffeeShop(), // صفحة أخرى
              ),
            );
            break;
          // أضف المزيد من الحالات حسب الحاجة
          default:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Pomodoro(), // صفحة افتراضية
              ),
            );
        }
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black,
        ),
        padding: const EdgeInsets.all(25),
        child: _getImage(index),
      ),
    );
  }

  Widget _getImage(int index) {
    switch (index) {
      case 0:
        return Stack(
          children: [
            Column(
              children: [
                Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/img/Download coffee logo design with coffee water splashing image like an excited person for free2.jpeg',
                          width: 150,
                        ))),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'C O F F E  S H O P',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ],
        );
      case 1:
        return Stack(
          children: [
            Column(
              children: [
                Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/img/Download coffee logo design with coffee water splashing image like an excited person for free.jpeg',
                          width: 200,
                          height: 150,
                        ))),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Pomodoro APP',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ],
        );
      case 2:
        return Image.asset(
            'assets/img/Download coffee logo design with coffee water splashing image like an excited person for free.jpeg');
      case 3:
        return Image.asset(
            'assets/img/WhatsApp Image 2024-11-01 at 13.39.34_88a5a4f3.jpg');
      case 4:
        return Image.asset(
            'assets/img/WhatsApp Image 2024-11-01 at 20.22.45_ca32dbe3.jpg');
      default:
        return Container(); // عنصر افتراضي في حالة عدم تطابق الفهرس مع أي حالة
    }
  }
}
