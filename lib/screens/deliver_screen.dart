import 'package:flutter/material.dart';
import 'package:foodapp/main.dart';
import 'package:foodapp/screens/resuables/button_widget.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              width: 130,
              height: 130,
              image: AssetImage('assets/images/obyimage.png'),
            ),
            const SizedBox(
              height: 5,
            ),
            const Center(
              child: Text(
                'Your package has been successfully\ndelivered',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            BottonWidget(
              text: 'Continue',
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OnBoarding(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
