import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> last4Products = [
  Product(
    id: 48,
    title: "Code de bureau",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/elec/1.jpg",
    color: Color(0xFF3D82AE),
  ),
  Product(
    id: 23,
    title: "Code de bureau",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/elec/1.jpg",
    color: Color(0xFF3D82AE),
  ),
  Product(
    id: 47,
    title: "Code de bureau",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/elec/1.jpg",
    color: Color(0xFF3D82AE),
  ),
  Product(
    id: 56,
    title: "Code de bureau",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/elec/1.jpg",
    color: Color(0xFF3D82AE),
  ),
];

List<Product> p_products = [
  Product(
    id: 1,
    title: "Code de bureau",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/elec/1.jpg",
    color: Color(0xFF3D82AE),
  ),
  Product(
    id: 2,
    title: "Sac de ceinture",
    price: 234,
    size: 8,
    description: dummyText,
    image: "assets/elec/2.jpg",
    color: Color(0xFFD3A984),
  ),
  Product(
    id: 3,
    title: "Accrocher le dessus",
    price: 234,
    size: 10,
    description: dummyText,
    image: "assets/elec/3.jpg",
    color: Color(0xFF989493),
  ),
  Product(
    id: 4,
    title: "Ancienne mode",
    price: 234,
    size: 11,
    description: dummyText,
    image: "assets/elec/4.jpeg",
    color: Color(0xFFE6B398),
  ),
  Product(
    id: 5,
    title: "Code de bureau",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/elec/5.jpg",
    color: Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    title: "Code de bureau",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/elec/6.jpg",
    color: Color(0xFFAEAEAE),
  ),
];

final demoProducts = p_products;

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
