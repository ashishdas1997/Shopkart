import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Cart.dart' show Cart;
import 'cart_item.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    final cart= Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Cart'
        ),
      ),
      body: Column(children: <Widget>[
        Card(
          margin: EdgeInsets.all(15),
          child: Padding(
            padding: EdgeInsets.all(8) ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Total',
                style: TextStyle(
                  fontSize: 20,
                ),),
                Spacer(),
                Chip(
                  label: Text('\$${cart.totalAmount}'),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                FlatButton(child: Text('ORDER NOW',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),),
                onPressed: (){},
                  textColor: Colors.green.shade900,
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
              itemCount: cart.itemCount,
              itemBuilder: (ctx, i) => CartItem(
                  cart.items.values.toList()[i].id,
                  cart.items.keys.toList()[i],
                  cart.items.values.toList()[i].price,
                  cart.items.values.toList()[i].quantity,
                  cart.items.values.toList()[i].title) ),
        )
      ],
      ),
    );
  }
}
