import 'package:flutter/material.dart';

import 'package:foodapp/screens/cancelled_order.dart';
import 'package:foodapp/screens/resuables/placeorder_widget.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const <Widget>[
          Icon(
            Icons.shopping_cart,
            color: Colors.blueGrey,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Image(
            image: AssetImage('assets/images/obyimage.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text('Your order has \n been placed successfully'),
          ),
          const SizedBox(
            height: 20,
          ),
          PlaceOrderButton(
            text: 'Track order',
            ontap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CancelledOrder(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
