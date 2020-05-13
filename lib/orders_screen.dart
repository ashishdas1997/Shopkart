import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_drawer.dart';
import 'orders.dart' show Orders;
import 'order_item.dart';
class OrdersScreen extends StatelessWidget {
  static const routeName= '/orders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      drawer: AppDrawer(),
      body:ListView.builder(itemCount:orderData.orders.length ,itemBuilder: (ctx,i)=> OrderItem(orderData.orders[i])) ,
    );
  }
}
