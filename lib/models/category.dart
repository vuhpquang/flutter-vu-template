import 'package:flutter/foundation.dart';

class Category {
  final String id;
  final String title;
  final String colorA;
  final String colorB;
  final String iconImageUrl;
  final List<dynamic> recipes;

  Category(
      {required this.id,
        required this.title,
        required this.colorA,
        required this.colorB,
        required this.iconImageUrl,
        required this.recipes});

  factory Category.instantiate(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      title: json['title'],
      colorA: json['colorA'],
      colorB: json['colorB'],
      iconImageUrl: json['iconImageUrl'],
      recipes: json['recipes'],
    );
  }
}