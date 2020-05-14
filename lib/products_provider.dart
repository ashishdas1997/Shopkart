import 'package:flutter/material.dart';
import 'product.dart';

class ProductsProvider with ChangeNotifier{


  List<Product> _items=[
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
      'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Almonds',
      description: 'Some Healthy Almonds',
      price: 129.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/25/12/56/almonds-1768792_1280.jpg',
    ),
    Product(
      id: 'p6',
      title: 'Pocket Clock',
      description: 'A Pocket Clock',
      price: 109.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2018/02/24/20/39/clock-3179167_1280.jpg',
    ),
    Product(
      id: 'p7',
      title: 'Coffee Mug',
      description: '  A nice stylish Coffee Mug',
      price: 69.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/11/29/12/46/breakfast-1869599_1280.jpg',
    ),
    Product(
      id: 'p8',
      title: 'Jewellery',
      description: 'Here is a precious neckpiece from A&A Sons',
      price: 529.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2017/10/19/11/00/heart-2867205_1280.jpg',
    ),
    Product(
      id: 'p9',
      title: 'Spectacles',
      description: 'Here is a trendy Spectacle',
      price: 50.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2014/08/11/03/51/glasses-415256_1280.jpg',
    ),
    Product(
      id: 'p10',
      title: 'Pillow',
      description: "Soft Comfortable Pillows",
      price: 112.00,
      imageUrl:
      'https://cdn.pixabay.com/photo/2015/11/07/11/22/pillows-1031079_1280.jpg',
    ),
  ];
//  var _showFavouritesOnly= false;


  List<Product> get items{
//    if(_showFavouritesOnly){
//      return _items.where((prodItem) => prodItem.isFavourite).toList();
//    }
    return[..._items];
  }

  List<Product> get favouriteItems{
    return _items.where((prodItem) => prodItem.isFavourite).toList();
  }
  Product findById(String id ){
    return _items.firstWhere((prod) => prod.id==id);
  }

//  void showFavouritesOnly(){
//    _showFavouritesOnly=true;
//    notifyListeners();
//  }
//
//  void showAll(){
//    _showFavouritesOnly=false;
//    notifyListeners();
//  }
  void addProduct(){
    //items.add(value);
    notifyListeners();
  }
}