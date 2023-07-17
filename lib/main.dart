import 'package:flutter/material.dart';
import 'package:foodapp/screens/onboarding.dart';

void main() {
  runApp(const DeFood());
}

class DeFood extends StatelessWidget {
  const DeFood({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Defood',
      home: OnBoarding(),
    );
  }
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(''),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ReliableScreen(),
                  ),
                );
              },
              child: const Text(
                'Buffet Ng',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            height: 3,
            width: 70,
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
