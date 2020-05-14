import 'package:flutter/material.dart';
import 'cart_screen.dart';
import 'orders.dart';
import 'Cart.dart';
import 'products_provider.dart';
import 'package:provider/provider.dart';
import 'products_overview_screen.dart';
import 'product_detail_screen.dart';
import 'orders_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
     ChangeNotifierProvider(
      create: (ctx) =>  ProductsProvider(),),
    ChangeNotifierProvider(
    create: (ctx) =>  Cart(),),
        ChangeNotifierProvider(
          create: (ctx) =>  Orders(),),
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
            primarySwatch: Colors.amber,
            accentColor: Colors.red.shade400,
            fontFamily: 'Eczar'),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx)=> ProductDetailScreen(),
          CartScreen.routeName: (ctx)=> CartScreen(),
          OrdersScreen.routeName: (ctx)=> OrdersScreen()
        },
      ),
    );
  }
}
