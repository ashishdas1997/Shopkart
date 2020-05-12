import 'package:flutter/material.dart';
import 'products_provider.dart';
import 'package:provider/provider.dart';
import 'products_overview_screen.dart';
import 'product_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
     create: (ctx) =>  ProductsProvider(),
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
        },
      ),
    );
  }
}
