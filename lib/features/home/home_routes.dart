import 'package:desktop_base/features/about/about_page.dart';
import 'package:desktop_base/features/home/home_page.dart';
import 'package:desktop_base/features/product/add_product/add_product_page.dart';
import 'package:flutter/material.dart';


Widget homeRoute(String? url) {
  switch (url) {
    case HomePage.route:
      return const HomePage();
    default:
      return const HomePage();
  }
}


