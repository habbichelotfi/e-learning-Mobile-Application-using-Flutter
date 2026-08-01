import 'package:flutter/material.dart';

class Course {
  final String title;
  final String subtitle;
  final String lectures;
  final String students;
  final String rating;
  final String price;
  final String imagePath;
  final Color color;
  bool isFavorite;

  Course({
    required this.title,
    required this.subtitle,
    required this.lectures,
    required this.students,
    required this.rating,
    required this.price,
    required this.imagePath,
    required this.color,
    this.isFavorite = false,
  });
}
