import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintext;
  const TextFieldWidget({this.hintext, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 5,
        bottom: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 2,
            bottom: 2,
          ),
          hintStyle: const TextStyle(
            color: Colors.blueGrey,
          ),
          hintText: hintext,
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
        ),
      ),
    );
  }
}
