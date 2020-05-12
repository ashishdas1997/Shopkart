
import 'package:flutter/material.dart';
import 'products_grid.dart';

enum FilterOptions{
  Favourites,
  All,
}
class ProductsOverviewScreen extends StatefulWidget {

  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showFavouritesOnly= false;
  @override
  Widget build(BuildContext context) {
//    final productsContainer = Provider.of<ProductsProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
       title: Text('MyShop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue){
              setState(() {
                if(selectedValue==FilterOptions.Favourites){
                  _showFavouritesOnly=true;
                } else{
                  _showFavouritesOnly=false;
                }
              });

            },
            icon: Icon(
                Icons.more_vert
            ), itemBuilder: (_) => [
            PopupMenuItem(child: Text('Only Favourites'),
            value: FilterOptions.Favourites),
            PopupMenuItem(child: Text('Show All'),
    value: FilterOptions.All)
          ],),
        ],
      ),
      body :  ProductsGrid(_showFavouritesOnly),
    );
  }
}



