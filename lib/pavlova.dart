
import 'package:flutter/material.dart';

class PavlovaPage extends StatelessWidget {
  const PavlovaPage({super.key});

  Widget info(IconData icon, String title, String value) => Column(
        children: [
          Icon(icon, color: Colors.amber, size: 28),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      );

  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 252, 244, 249),
    appBar: AppBar(
      title: const Text('Quimado'),
      centerTitle: true,
      backgroundColor: const Color(0xFFFAF4FC),
      ),
      body: ListView(
        children: [
          Image.asset('assets/pavlova.jpg', fit: BoxFit.cover),
          const SizedBox(height: 20),
          const Text(
            'Strawberry Pavlova',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Pavlova is a meringue-based dessert named after the '
              'Russian ballerina Anna Pavlova. It has a crisp crust '
              'and soft inside, topped with fruit and whipped cream.',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 5; i++)
                Icon(
                  i < 3 ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                  size: 20,
                ),
              const SizedBox(width: 12),
              const Text('90 Reviews'),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              info(Icons.timer_outlined, 'PREP', '25 min'),
              info(Icons.restaurant, 'COOK', '1 hr'),
              info(Icons.group, 'FEEDS', '4-6'),
            ],
          ),
        ],
      ),
    );
  }
}
