import 'package:flutter/material.dart';

import 'package:foodapp/screens/main_screen.dart';
import 'package:foodapp/screens/resuables/button_widget.dart';

import 'package:foodapp/screens/resuables/resuable_widget.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  top: 5,
                ),
              ),
            ],
          ),
          const TextFieldWidget(
            hintext: 'username',
          ),
          const TextFieldWidget(
            hintext: 'Email',
          ),
          const TextFieldWidget(
            hintext: 'Password',
          ),
          const SizedBox(
            height: 3,
          ),
          Center(
            child: BottonWidget(
              text: 'Continue',
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
