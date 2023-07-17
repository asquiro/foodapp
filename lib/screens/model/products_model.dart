class ProductModel {
  List<String>? imagelist;
  String? description;
  int? id;
  double? amount;
  bool? favourite;
  String? name;
  int? quantity;

  ProductModel(
      {this.amount,
      this.description,
      this.id,
      this.imagelist,
      this.name,
      this.quantity,
      this.favourite});

  static List productList = [
    ProductModel(
      imagelist: [
        'assets/images/burger.png',
        'assets/images/burger.png',
        'assets/images/burger.png',
      ],
      id: 1,
      quantity: 2,
      name: 'Burger',
      description: 'Snacks',
      amount: 200.0,
      favourite: false,
    ),
    ProductModel(
      imagelist: [
        'assets/images/maize.jpeg',
        'assets/images/maize.jpeg',
        'assets/images/maize.jpeg',
      ],
      id: 2,
      quantity: 10,
      name: 'Maize',
      description: 'Cereals',
      amount: 150.0,
      favourite: false,
    ),
    ProductModel(
      imagelist: [
        'assets/images/groundnut.jpeg',
        'assets/images/groundnut.jpeg',
        'assets/images/groundnut.jpeg',
      ],
      id: 3,
      quantity: 500,
      name: 'Legume',
      description: 'Legume',
      amount: 250.0,
      favourite: false,
    ),
    ProductModel(
      imagelist: [
        'assets/images/onion.jpeg',
        'assets/images/onion.jpeg',
        'assets/images/onion.jpeg',
      ],
      id: 4,
      quantity: 50,
      name: 'Onion',
      description: 'Vegetable',
      amount: 50.0,
      favourite: false,
    ),
    ProductModel(
      imagelist: [
        'assets/images/beans.jpeg',
        'assets/images/beans.jpeg',
        'assets/images/beans.jpeg',
      ],
      id: 5,
      quantity: 30,
      name: 'Beans',
      description: 'Ceareal',
      amount: 180.0,
      favourite: false,
    ),
    ProductModel(
      imagelist: [
        'assets/images/rice.jpeg',
        'assets/images/rice.jpeg',
        'assets/images/rice.jpeg',
      ],
      id: 6,
      quantity: 10,
      name: 'Rice',
      description: 'Cereal',
      amount: 230.0,
      favourite: false,
    ),
  ];
}
