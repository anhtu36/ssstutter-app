import 'package:flutter/material.dart';

class Product {
  final String image, title, addColors, price;
  final int id;

  Product(
      {required this.image,
      required this.title,
      required this.addColors,
      required this.price,
      required this.id});
}

List<Product> products = [
  Product(
      title: 'Great Life Tee',
      price: '64.500 đ',
      image: 'assets/images/a1.JPG',
      addColors: '+10 màu',
      id: 1),
  Product(
      title: 'Hen Dress',
      price: '199.500 đ',
      image: 'assets/images/a2.JPG',
      addColors: '+3 màu',
      id: 2),
  Product(
      title: 'Sunflower Big Tee',
      price: '399.000 đ',
      image: 'assets/images/a3.JPG',
      addColors: '+10 màu',
      id: 3),
  Product(
      title: 'Great Life Tee',
      price: '64.500 đ',
      image: 'assets/images/a4.JPG',
      addColors: '+6 màu',
      id: 4),
  Product(
      title: 'Smart Pants',
      price: '419.000 đ',
      image: 'assets/images/a5.JPG',
      addColors: '+4 màu',
      id: 5),
  Product(
      title: 'Unum Tank',
      price: '299.000 đ',
      image: 'assets/images/a6.JPG',
      addColors: '+1 màu',
      id: 6),
  Product(
      title: 'Pocket Mini Skirt',
      price: '349.000 đ',
      image: 'assets/images/a7.JPG',
      addColors: '+2 màu',
      id: 7),
  Product(
      title: 'Wash Polo',
      price: '419.000 đ',
      image: 'assets/images/a8.JPG',
      addColors: '+3 màu',
      id: 8),
  Product(
      title: 'Sss. Soft Boxer',
      price: '99.000 đ',
      image: 'assets/images/a9.JPG',
      addColors: '+3 màu',
      id: 9),
  Product(
      title: 'Fit Pants',
      price: '499.000 đ',
      image: 'assets/images/a10.JPG',
      addColors: '+7 màu',
      id: 10),
  Product(
      title: 'Sunflower Polo Tee',
      price: '399.000 đ',
      image: 'assets/images/v1.jpeg',
      addColors: '+3 màu',
      id: 11),
  Product(
      title: 'Surfer Trousers',
      price: '499.000 đ',
      image: 'assets/images/v2.jpeg',
      addColors: '+3 màu',
      id: 12),
  Product(
      title: 'Le Trousers',
      price: '449.000 đ',
      image: 'assets/images/v3.jpeg',
      addColors: '+5 màu',
      id: 13),
  Product(
      title: 'Red Gingham Dress',
      price: '199.500 đ',
      image: 'assets/images/v4.jpeg',
      addColors: '+3 màu',
      id: 14),
  Product(
      title: 'Layer Skirt',
      price: '199.500 đ',
      image: 'assets/images/v5.jpeg',
      addColors: '+3 màu',
      id: 15),
  Product(
      title: 'Bei Linen Shirt',
      price: '429.000 đ',
      image: 'assets/images/v6.jpeg',
      addColors: '+3 màu',
      id: 16),
  Product(
      title: 'Blank BackPack',
      price: '209.300 đ',
      image: 'assets/images/v7.jpeg',
      addColors: '+1 màu',
      id: 17),
  Product(
      title: 'GodFather Shirt',
      price: '449.000 đ',
      image: 'assets/images/v8.jpeg',
      addColors: '+4 màu',
      id: 18),
  Product(
      title: 'Form Jeans-II',
      price: '499.000 đ',
      image: 'assets/images/v10.jpeg',
      addColors: '+2 màu',
      id: 19),
  Product(
      title: 'David Jacket',
      price: '399.000 đ',
      image: 'assets/images/v9.jpeg',
      addColors: '+3 màu',
      id: 20),
];
