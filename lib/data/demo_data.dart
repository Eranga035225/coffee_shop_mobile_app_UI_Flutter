import 'package:coffee_shop_app/models/ProductModel.dart';

class DemoData{

  static List<String> coffeeCategories = [
    'Cappuccino',
    'Espresso',
    'Latte',
    'Mocha',
    'Americano',
    'Macchiato',
    'Flat White',
    'Cold Brew',
    'Iced Coffee',
    'Frappuccino',

  ];

  static List<Product> products = [
    Product(
      name: 'Iced Cappuccino',
      image: 'assets/images/capuccino.jpg',
      rating: 4.5,
      category: 'Cappuccino ',
      price: 4.99,
    ),
    Product(
      name: 'Hot Espresso',
      image: 'assets/images/espresso.jpg',
      rating: 4.7,
      category: 'Espresso',
      price: 3.99,
    ),
    Product(
      name: 'Vanilla Latte',
      image: 'assets/images/latte.jpg',
      rating: 4.6,
      category: 'Latte',
      price: 5.49,
    ),
    Product(
      name: 'Classic Mocha',
      image: 'assets/images/mocha.jpg',
      rating: 4.4,
      category: 'Mocha',
      price: 5.99,
    ),
    Product(
      name: 'Caffe Americano',
      image: 'assets/images/americano.jpg',
      rating: 4.3,
      category: 'Americano',
      price: 3.49,
    ),






  ];




  




}