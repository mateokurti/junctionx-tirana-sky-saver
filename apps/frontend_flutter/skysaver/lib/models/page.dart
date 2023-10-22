import 'package:flutter/material.dart';

class Page {
  final String name;
  final String title;
  final Widget page;
  final IconData icon;

  final Color color;

  Page({
    required this.name,
    required this.title,
    required this.page,
    required this.icon,
    required this.color,
  });
}
