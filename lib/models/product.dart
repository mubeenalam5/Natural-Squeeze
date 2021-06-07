import 'package:flutter/material.dart';

class Product {
  final String image;
  final String title;
  final String description;
  final double price;

  Product({
    @required this.image, 
    @required this.title, 
    @required this.description, 
    @required this.price
  });
}