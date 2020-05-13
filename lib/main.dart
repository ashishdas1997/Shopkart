import 'package:flutter/material.dart';
import 'package:shopapp/cart_screen.dart';
import 'Cart.dart';
import 'products_provider.dart';
import 'package:provider/provider.dart';
import 'products_overview_screen.dart';
import 'product_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
     ChangeNotifierProvider(
      create: (ctx) =>  ProductsProvider(),),
    ChangeNotifierProvider(
    create: (ctx) =>  Cart()),
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            accentColor: Colors.deepOrange,
            fontFamily: 'Eczar'),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx)=> ProductDetailScreen(),
          CartScreen.routeName: (ctx)=> CartScreen(),
        },
      ),
    );
  }
}
