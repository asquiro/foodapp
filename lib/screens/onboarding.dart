import 'package:flutter/material.dart';

import 'package:foodapp/screens/resuables/button_widget.dart';
import 'package:foodapp/screens/tabbar_screen.dart';

class ReliableScreen extends StatefulWidget {
  const ReliableScreen({super.key});

  @override
  State<ReliableScreen> createState() => _ReliableScreenState();
}

class _ReliableScreenState extends State<ReliableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                'assets/images/person.png',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text.rich(
              TextSpan(
                text: 'Reliable',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'Order any kind of food\n while sitting in your\n home',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BottonWidget(
              text: 'Continue',
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TabScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
