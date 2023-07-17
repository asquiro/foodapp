import 'package:flutter/material.dart';
import 'package:foodapp/main.dart';
import 'package:foodapp/screens/resuables/placeorder_widget.dart';

class CancelledOrder extends StatefulWidget {
  const CancelledOrder({super.key});

  @override
  State<CancelledOrder> createState() => _CancelledOrderState();
}

class _CancelledOrderState extends State<CancelledOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              'Order Has been Cancelled',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          PlaceOrderButton(
            text: 'Cancel Order',
            ontap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const OnBoarding(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
