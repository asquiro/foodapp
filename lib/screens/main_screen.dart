import 'package:flutter/material.dart';
import 'package:foodapp/screens/model/products_model.dart';
import 'package:foodapp/screens/widget/products_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final productList = ProductModel.productList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(
            left: 20.0,
          ),
          child: Image(
            image: AssetImage('assets/images/man.png'),
          ),
        ),
        title: const Text(
          'Obiada',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.account_balance_wallet,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Find Good\nFood Around You',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 500,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.lightGreen,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    border: InputBorder.none,
                    prefix: Icon(Icons.search),
                    suffix: Icon(
                      Icons.account_balance_sharp,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 14.0,
                        right: 8.0,
                        top: 5,
                        bottom: 4,
                      ),
                      child: Text(
                        'Set Meal',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 14.0,
                        right: 8.0,
                        top: 5,
                        bottom: 4,
                      ),
                      child: Text(
                        'Hot Sales',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 14.0,
                        right: 8.0,
                        top: 5,
                        bottom: 4,
                      ),
                      child: Text(
                        'Popularity',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: productList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) => ProductWidget(
                  productModel: productList[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
