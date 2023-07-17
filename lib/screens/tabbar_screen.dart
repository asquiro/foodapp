import 'package:flutter/material.dart';
import 'package:foodapp/screens/account.dart';
import 'package:foodapp/screens/login.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              'Account',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.umbrella,
                ),
                text: 'Signup',
              ),
              Tab(
                icon: Icon(
                  Icons.home,
                ),
                text: 'Login',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AccountScreen(),
            LoginScreen(),
          ],
        ),
      ),
    );
  }
}
