import 'package:flutter/material.dart';
import 'package:foodapp/screens/deliver_screen.dart';

import 'package:foodapp/screens/resuables/button_widget.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

enum Payment {
  paypal,
  mastercard,
  visa,
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  Payment? _payment = Payment.paypal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(
            left: 10,
            top: 10,
            bottom: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.grey.withOpacity(0.3),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        title: const Text(
          'Check Out',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          right: 30,
          left: 30.0,
          top: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Delivery',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 19,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Container(
              width: 480,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(7),
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  left: 10,
                  right: 10,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      'Delivery Time to Victoria\nIsland',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      '1hrs 3min',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Payment',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: const Image(
                image: AssetImage('assets/images/logos_paypal.png'),
              ),
              trailing: Radio(
                value: Payment.paypal,
                groupValue: _payment,
                hoverColor: Colors.blueAccent,
                onChanged: (Payment? value) {
                  setState(() {
                    _payment = value;
                  });
                },
              ),
            ),
            ListTile(
              leading: const Image(
                image: AssetImage('assets/images/mastercard.png'),
              ),
              trailing: Radio(
                value: Payment.mastercard,
                groupValue: _payment,
                hoverColor: Colors.blueAccent,
                onChanged: (Payment? value) {
                  setState(
                    () {
                      _payment = value;
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: const Image(
                image: AssetImage('assets/images/logos_visa.png'),
              ),
              trailing: Radio(
                value: Payment.visa,
                groupValue: _payment,
                hoverColor: Colors.blueAccent,
                onChanged: (Payment? value) {
                  setState(
                    () {
                      _payment = value;
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Text(
                  'Items',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 320,
                ),
                Text(
                  'Add Item',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: BottonWidget(
                text: 'Place Order',
                ontap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const DeliveryScreen(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
