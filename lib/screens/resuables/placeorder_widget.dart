import 'package:flutter/material.dart';

class PlaceOrderButton extends StatelessWidget {
  final String? text;
  final Function()? ontap;
  const PlaceOrderButton({this.text, this.ontap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 40,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.orange,
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
