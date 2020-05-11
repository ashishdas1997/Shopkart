import 'package:flutter/material.dart';
import 'product.dart';
import 'products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyShop',
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          accentColor: Colors.deepOrange,
          fontFamily: 'Eczar'),
      home: ProductsOverviewScreen(),
    );
  }
}
