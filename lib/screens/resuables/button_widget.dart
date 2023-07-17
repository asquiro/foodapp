import 'package:flutter/material.dart';

class BottonWidget extends StatelessWidget {
  final Function()? ontap;
  final String? text;
  const BottonWidget({this.ontap, this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 170,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
