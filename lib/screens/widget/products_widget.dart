import 'package:flutter/material.dart';
import 'package:foodapp/screens/model/products_model.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel? productModel;
  const ProductWidget({this.productModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10,
        left: 10,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Image(
                image: AssetImage(
                  'assets/images/vector.png',
                ),
                height: 20,
                width: 20,
              ),
            ),
          ),
          SizedBox(
            width: 300,
            height: 70,
            child: Image(
              image: AssetImage(
                productModel!.imagelist!.first,
              ),
            ),
          ),
          Text(
            productModel!.name!,
          ),
          Text("\$${productModel!.amount!.toString()}")
        ],
      ),
    );
  }
}
