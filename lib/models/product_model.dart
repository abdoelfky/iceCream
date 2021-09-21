import 'package:flutter/material.dart';

class Product {
  final String image, title, description,dummyText;
  final int id;
  final double price;
  Product({
    this.dummyText,
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
  });
}

List<Product> products =
[
  Product(
    id:1,
    title: "Chocolate Flavour",
    price: 16.500,
    description: 'Chocolate Flavour filled with candy and extra topping',
    dummyText:dummyText,
    image: "assets/images/2.png",
  ),
  Product(
    id:2,
    title: "Sherbet Flavour",
    price: 18.500,
    description: 'Sherbet Flavour filled with candy and extra topping',
    dummyText:dummyText,
    image: "assets/images/auth.png",
  ),
  Product(
    id:3,
    title: "Strawberry Flavour",
    price: 16.500,
    description: 'Strawberry Flavour filled with candy and extra topping',
    dummyText:dummyText,
    image: "assets/images/3.png",
  ),
  Product(
    id:4,
    title: "Mix Flavour",
    price: 18,
    description: 'Mix Flavour filled with candy and extra topping',
    dummyText:dummyText,
    image: "assets/images/4.png",
  ),
  Product(
    id:5,
    title: "Blueberry Flavour",
    price: 14,
    description: 'Blueberry Flavour filled with candy and extra topping',
    dummyText:dummyText,
    image: "assets/images/5.png",
  ),
  Product(
    id:6,
    title: "Sherbet Flavour",
    price: 15,
    description: 'Sherbet Flavour filled with candy and extra topping',
    dummyText:dummyText,
    image: "assets/images/6.png",
  ),
  Product(
    id:7,
    title: "Mango Flavour",
    price: 24.500,
    description: 'Mango Flavour filled with candy and extra topping',
    dummyText:dummyText,
    image: "assets/images/7.png",
  ),
  Product(
    id:8,
    title: "Vanilla Flavour",
    price: 22.500,
    description: "Vanilla Flavour filled with candy and extra topping",
    dummyText:dummyText,
    image: "assets/images/1.jpeg",
  ),
];

String dummyText='Flavour which , is carefully extracted with from the best fruits which bursts with a mind flavor ';