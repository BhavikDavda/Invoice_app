import 'package:flutter/material.dart';
import 'package:invoice_app/screens/cart_page.dart';
import 'package:invoice_app/screens/detail_page.dart';
import 'package:invoice_app/screens/home_page.dart';
import 'package:invoice_app/screens/invoice_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      routes: {
        'Homepage': (context) => const Homepage(),
        'Detailpage': (context) => const Detailpage(),
        'CartPage': (context) => const  CartPage(),
        'bilpage': (context) => const PdfPage(),
      },
    ),
  );
}
