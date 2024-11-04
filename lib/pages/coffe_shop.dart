import 'package:flutter/material.dart';
import 'package:profile/model/thems.dart';

class CoffeeShop extends StatefulWidget {
  const CoffeeShop({super.key});

  @override
  State<CoffeeShop> createState() => _CoffeeShopState();
}

class _CoffeeShopState extends State<CoffeeShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 47, 28, 25),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.white60,
        centerTitle: true,
        title: const Text(
          'COFFEE SHOP',
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
              minWidth: MediaQuery.of(context).size.width,  // الحد الأدنى للعرض
              maxWidth: MediaQuery.of(context).size.width,  // الحد الأقصى للعرض، يمكن تغيير القيمة حسب حاجتك
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'App Description:',
                    style: TextStyle(
                      color: TExt,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'This app allows you to explore and purchase the finest coffee varieties from around the world.\n With a sleek and user-friendly interface, you can search for your favorite coffee types, browse available coffee beans, and choose premium options like cappuccino, Americano, and more.',
                    style: TextStyle(color: TExt, fontSize: 16),
                    textAlign: TextAlign.start,
                  ),
                  const Center(
                    child: Text(
                      '________________________________',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/img/WhatsApp Image 2024-11-01 at 14.09.13_c1c6c054.jpg',
                        width: 150,
                      ),
                      const SizedBox(width: 25),
                      Image.asset(
                        'assets/img/WhatsApp Image 2024-11-01 at 14.09.14_6f804c6e.jpg',
                        width: 150,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Multiple Size Options:\n Choose the size that suits you (Small, Medium, Large)',
                    style: TextStyle(color: TExt, fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/img/WhatsApp Image 2024-11-01 at 14.09.14_4167fd57.jpg',
                        width: 150,
                      ),
                      const SizedBox(width: 25),
                      Image.asset(
                        'assets/img/WhatsApp Image 2024-11-01 at 14.09.15_2c3362c8.jpg',
                        width: 150),
                    ],
                  ),
                  const Center(
                    child: Text(
                      '________________________________',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Easy Search:\n Simply enter the name of the coffee you’re looking for,\n and available options will appear instantly.',
                    style: TextStyle(color: TExt, fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                  const Text(
                    '________________________________',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Detailed Information:\n  Learn more about each coffee type,\n including flavor notes, roast levels, and prices.',
                    style: TextStyle(color: TExt, fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
